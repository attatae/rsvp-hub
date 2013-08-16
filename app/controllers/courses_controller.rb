class CoursesController < ApplicationController
  def index
    @courses = Course.all
  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.new(params[:course])
    if @course.save
      flash[:success] = "Class created!"
      redirect_to courses_path
    else
      flash[:error] = "Opps something went wrong!..Class not created"
      render :new
    end
  end

  def show
    @course = Course.find(params[:id])
  end

  def edit
    @course = Course.find(params[:id])
  end

  def update
    
  end

  def destroy
    
  end

end