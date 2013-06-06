class LessonsController < ApplicationController

  def new
    authorize! :new, @user, :message => 'Not authorized as an administrator.'
    @lesson = Lesson.new
  end

  def create
  	authorize! :create, @user, :message => 'Not authorized as an administrator.'
    # @course = Course.find(params[:course_id])
    @course = Course.find_by_title(params[:course_title])
    @lesson = @course.lessons.create(params[:lesson])
    redirect_to course_path(@course)
  end

  def edit
  	authorize! :edit, @user, :message => 'Not authorized as an administrator.'
    # @course = Course.find(params[:course_id])
    @course = Course.find_by_title(params[:course_title])
    @lesson = @course.lessons.find(params[:id])
  end

  def update
    authorize! :update, @user, :message => 'Not authorized as an administrator.'
    # @course = Course.find(params[:id])
    @course = Course.find_by_title(params[:course_title])
    @lesson = @course.lessons.find(params[:id])

    respond_to do |format|
      if @course.update_attributes(params[:lesson])
        format.html { redirect_to @course, notice: 'Lesson was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @lesson.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
  	# @course = Course.find(params[:course_id])
    @course = Course.find_by_title(params[:course_title])
    @lesson = @course.lessons.find(params[:id])
    @lesson.destroy
    redirect_to course_path(@course)
  end

end