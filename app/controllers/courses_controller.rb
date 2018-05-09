class CoursesController < ApplicationController
  def index
    @courses = Course.all
  end

  def show
    @course = Course.find(params[:id])
    @cohorts = Cohort.where(course_id: params[:id])
  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.new(course_params)
    if @course.save
      redirect_to courses_path
    else
      redirect_to 'new'
    end
  end

  def edit
    @course = Course.find(params[:id])
  end

  def update
    @course = Course.find(params[:id])
    if @course.update(course_params)
      redirect_to course_path @course
    else
      redirect_to 'edit'
    end
  end

  def destroy
    Course.find(params[:id]).destroy
    redirect_to courses_path
  end

  private

  def course_params
    params.require(:course).permit(:code, :description, :tuition, :id)
  end
end
