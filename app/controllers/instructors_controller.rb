class InstructorsController < ApplicationController
  def index
    @instructors = Instructor.all
  end

  def create
    Instructor.create(instructor_params)
    redirect_to '/instructors'
  end

  def show
    @instructor = Instructor.find(params[:id])
  end

  def new
    @instructor = Instructor.new
  end

  def edit
    @instructor = Instructor.find(params[:id])
  end

  def update
    @instructor = Instructor.find(params[:id])
    @instructor.update(instructor_params)
    redirect_to '/instructors'
  end

  def destroy
    Instructor.find(params[:id]).destroy
    redirect_to '/instructors'
  end
end
