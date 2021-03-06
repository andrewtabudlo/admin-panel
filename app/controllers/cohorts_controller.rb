class CohortsController < ApplicationController

  before_action :confirm_logged_in

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
      flash[:notice] = "Cohort created successfully."
      redirect_to cohorts_path
    else
      redirect_to 'new'
    end
  end

  def edit
    @cohort = Cohort.find(params[:id])
  end

  def update
    @cohort = Cohort.find(params[:id])
    if @cohort.update(cohort_params)
      flash[:notice] = "Cohort updated successfully."
      redirect_to cohorts_path
    else
      redirect_to 'edit'
    end
  end

  def destroy
    deletecs = CohortStudent.where(cohort_id: params[:id])
    deletecs.each do |c|
      c.destroy
    end
    Cohort.find(params[:id]).destroy
    flash[:notice] = "Cohort destroyed successfully."
    redirect_to cohorts_path
  end

  private

  def cohort_params
    params.require(:cohort).permit(:name, :startdate, :enddate, :instructor_id, :course_id, :id)
  end

  def confirm_logged_in
    unless session[:user_id]
      flash[:notice] = "Please log in."
      redirect_to access_login_path
      # redirect_to prevents requested action from running
    end
  end
end
