class LessonsController < ApplicationController



  def new
    authorize! :new, @user, :message => 'Not authorized as an administrator.'
    @lesson = Lesson.new
  end

  def create
  	authorize! :create, @user, :message => 'Not authorized as an administrator.'
    @course = Course.find(params[:course_id])
    @lesson = @course.lessons.create(params[:lesson])
    redirect_to course_path(@course)
  end

  def update
  	
  end

  def edit
  	
  end

  def destroy
  	@course = Course.find(params[:course_id])
    @lesson = @course.lessons.find(params[:id])
    @lesson.destroy
    redirect_to course_path(@course)
  end

end