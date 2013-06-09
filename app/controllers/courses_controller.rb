class CoursesController < ApplicationController
  # GET /courses
  # GET /courses.json
  def index
    @courses = Course.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @courses }
    end
  end

  # GET /courses/1
  # GET /courses/1.json
  def show
    # @course = Course.find(params[:id])
    @course = Course.find_by_title(params[:course_title])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @course }
    end
  end

  # GET /courses/new
  # GET /courses/new.json
  def new
    authorize! :new, @user, :message => 'Not authorized as an administrator.'
    @course = Course.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @course }
    end
  end

  # POST /courses
  # POST /courses.json
  def create
    authorize! :create, @user, :message => 'Not authorized as an administrator.'
    @course = Course.new(params[:course])

    respond_to do |format|
      if @course.save
        format.html { redirect_to courses_path, notice: 'Course was successfully created.' }
        format.json { render json: courses_url, status: :created, location: @course }
      else
        format.html { render action: "new" }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  # GET /courses/1/edit
  def edit
    authorize! :edit, @user, :message => 'Not authorized as an administrator.'
    # @course = Course.find(params[:id])
    @course = Course.find_by_title(params[:course_title])
  end

  # PUT /courses/1
  # PUT /courses/1.json
  def update
    authorize! :update, @user, :message => 'Not authorized as an administrator.'
    # @course = Course.find(params[:id])
    @course = Course.find_by_title(params[:course_title])

    respond_to do |format|
      if @course.update_attributes(params[:course])
        format.html { redirect_to courses_path, notice: 'Course was successfully updated.' }
        # redirect_to(@course)
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /courses/1
  # DELETE /courses/1.json
  def destroy
    authorize! :destroy, @user, :message => 'Not authorized as an administrator.'
    # @course = Course.find(params[:id])
    @course = Course.find_by_title(params[:course_title])
    @course.destroy

    respond_to do |format|
      format.html { redirect_to courses_url }
      format.json { head :no_content }
    end
  end
end
