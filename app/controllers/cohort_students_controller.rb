class CohortStudentsController < ApplicationController
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
    params.require(:cohort_student).permit(:cohort_id, :student_id, :id)
  end
end
