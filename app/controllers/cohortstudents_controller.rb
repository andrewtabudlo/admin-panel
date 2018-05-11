class CohortstudentsController < ApplicationController

  before_action :confirm_logged_in

  def new
    @cohortstudent = CohortStudent.new
  end

  def create
    @cohortstudent = CohortStudent.new(cohortstudent_params)
    if @cohortstudent.save
      redirect_to cohorts_path
    else
      redirect_to 'new'
    end
  end

  def edit
    @cohortstudent = CohortStudent.find_by(student_id: 1)
  end

  def update
    @cohortstudent = CohortStudent.find_by(student_id: 1)
    if @cohortstudent = CohortStudent.update(cohortstudent_params)
      redirect_to cohorts_path
    else
      redirect_to 'edit'
    end
  end

  private

  def cohortstudent_params
    params.require(:cohortstudent).permit(:cohort_id, :student_id, :id)
  end

  def confirm_logged_in
    unless session[:user_id]
      flash[:notice] = "Please log in."
      redirect_to access_login_path
      # redirect_to prevents requested action from running
    end
  end
end
