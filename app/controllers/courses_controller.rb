class CoursesController < ApplicationController
  def index
    @courses = Course.all
  end

  def new
    @course = Course.new
  end

  def create
  end

  def show
    
  end

  def edit
    
  end

  def update
    
  end

  def destroy
    
  end

end