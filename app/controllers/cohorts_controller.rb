class CohortsController < ApplicationController
  def index
    @cohorts = Cohort.all
  end

  def show
    @cohort = Cohort.find(params[:id])
    @students = CohortStudent.where(cohort_id: params[:id])
  end

  def new
    @cohort = Cohort.new
  end

  def create
    @cohort = Cohort.new(cohort_params)
    if @cohort.save
      redirect_to cohorts_path
    else
      redirect_to 'new'
    end
  end

  def edit
    @cohort = Cohort.find(params[:id])
  end

  def update
    @cohort = Cohort.new(cohort_params)
    if @cohort.save
      redirect_to cohorts_path
    else
      redirect_to 'edit'
    end
  end

  def destroy
    Cohort.find(params[:id]).destroy
    redirect_to cohorts_path
  end

  private

  def cohort_params
    params.require(:cohort).permit(:name, :startdate, :tuition, :instructor_id, :course_id, :id)
  end
end
