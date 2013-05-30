class LessonsController < ApplicationController

  def index
  	
  end

  def show
  	
  end

  def create
  	authorize! :create, @video, :message => 'Not authorized as an administrator.'
    @course = Course.find(params[:course_id])


  end

  def new
  	
  end

  def update
  	
  end

  def edit
  	
  end

  def destroy
  	
  end

end