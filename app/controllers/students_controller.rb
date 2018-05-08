class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
    @cohorts = CohortStudent.where(student_id: params[:id])
  end

  def new
    @student = Student.new
  end

  def create
    Student.create(student_params)
    redirect_to '/students'
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    @student.update(student_params)
    redirect_to '/students'
  end

  def destroy
    Student.find(params[:id]).destroy
    redirect_to '/students'
  end

  #http://edgeguides.rubyonrails.org/action_controller_overview.html#strong-parameters
  private
  # Using a private method to encapsulate the permissible parameters is
  # just a good pattern since you'll be able to reuse the same permit
  # list between create and update. Also, you can specialize this method
  # with per-user checking of permissible attributes.
  def owner_params
    params.require(:student).permit(:name, :dob, :email, :id)
  end
end
