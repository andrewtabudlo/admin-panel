class CohortStudentsController < ApplicationController

  before_action :confirm_logged_in

  def new
    @cohortstudent = CohortStudent.new
  end

  def create
    @cohortstudent = CohortStudent.new(cohort_student_params)
    if @cohortstudent.save
      redirect_to cohorts_path
    else
      redirect_to 'new'
    end
  end

  def edit
    @cohortstudent = CohortStudent.find_by(student_id: params[:id])
  end

  def update
    @cohortstudent = CohortStudent.find_by(student_id: params[:id])
    if @cohortstudent.update(cohort_student_params)
      redirect_to cohorts_path
    else
      redirect_to 'edit'
    end
  end

  private

  def cohort_student_params
    params.require(:cohort_student).permit(:cohort_id, :student_id, :grade, :passing, :id)
  end

  def confirm_logged_in
    unless session[:user_id]
      flash[:notice] = "Please log in."
      redirect_to access_login_path
      # redirect_to prevents requested action from running
    end
  end
end
