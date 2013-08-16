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
    @course = Course.find(params[:id])
    if @course.update_attributes(params[:course])
      flash[:success] = 'Successfully updated Course'
      redirect_to courses_path
    else
      flash[:error] = 'Oops, there it is!!...'
      render :edit
    end
  end

  def destroy
    @course = Course.find(params[:id])
    @course.destroy
    flash[:success] = 'Successfully deleted Course'
    redirect_to courses_path
  end

end