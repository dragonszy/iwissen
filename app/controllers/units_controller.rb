class UnitsController < ApplicationController

  def index
  	
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
      redirect_to "/courses/#{@course.id}"
    else

    end
  end

  def edit
  	
  end

  def update
  	
  end

  def destroy
  	
  end

end