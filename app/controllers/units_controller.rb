class UnitsController < ApplicationController

  def index
  	@units = Unit.all
  end

  def show
  	
  end

  def new
  	authorize! :new, @user, :message => 'Not authorized as an administrator.'
  	@unit = Unit.new
  end

  def create
  	authorize! :create, @user, :message => 'Not authorized as an administrator.'
    @unit = Unit.new(params[:unit])

    if @unit.save
      # redirect_to :back may work properly, but is it the best practice?
      redirect_to :back
      # redirect_to "/courses/#{@course.id}"
      # some errors in redirection
    else
      redirect_to :back, :notice => "未能成功创建课程单元"
    end
  end

  def edit
  	
  end

  def update
  	
  end

  def destroy
  	
  end

end