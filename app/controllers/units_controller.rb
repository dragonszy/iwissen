class UnitsController < ApplicationController

  def index
  	@units = Unit.all
  end

  def show
  	@unit = Unit.find(params[:id])
  end

  def new
  	authorize! :new, @user, :message => 'Not authorized as an administrator.'
  	@unit = Unit.new
  end

  def create
  	authorize! :create, @user, :message => 'Not authorized as an administrator.'
    @course = Course.find(params[:course_id])
    @unit = @course.units.create(params[:unit])

    if @unit.save
      # redirect_to :back may work properly, but is it the best practice?
      redirect_to course_path(@course), :notice => "成功创建单元"
      # redirect_to "/courses/#{@course.id}"
      # some errors in redirection
    else
      redirect_to course_path(@course), :notice => "未能成功创建课程单元"
    end
  end

  def edit
  	
  end

  def update
  	
  end

  def destroy
  	@course = Course.find(params[:course_id])
    @unit = @course.units.find(params[:id])
    @unit.destroy
    redirect_to course_path(@course)
  end

end