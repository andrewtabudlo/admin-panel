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
    @student = Student.new(student_params)
    if @student.save
      redirect_to '/students'
    else
      redirect_to 'new'
    end
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    if @student.update(student_params)
      redirect_to student_path @student
    else
      redirect_to 'edit'
    end
  end

  def delete
    @student = Student.find(params[:id])

  end

  def destroy
    Student.find(params[:id]).destroy
    redirect_to students_path
  end

  #http://edgeguides.rubyonrails.org/action_controller_overview.html#strong-parameters
  private
  # Using a private method to encapsulate the permissible parameters is
  # just a good pattern since you'll be able to reuse the same permit
  # list between create and update. Also, you can specialize this method
  # with per-user checking of permissible attributes.
  def student_params
    params.require(:student).permit(:fname, :lname, :email, :id)
  end
end
