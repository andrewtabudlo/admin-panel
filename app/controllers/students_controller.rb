class StudentsController < ApplicationController

  before_action :confirm_logged_in

  def index
    @students = Student.order(:lname)
  end

  def show
    @student = Student.find(params[:id])
    @cohorts = CohortStudent.find_by(student_id: params[:id])

  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      flash[:notice] = "Student created successfully."
      redirect_to students_path
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
      flash[:notice] = "Student updated successfully."
      redirect_to student_path @student
    else
      redirect_to 'edit'
    end
  end

  def destroy
    deletestudent = CohortStudent.where(student_id: params[:id])
    deletestudent.each do |s|
      s.destroy
    end
    Student.find(params[:id]).destroy
    flash[:notice] = "Student destroyed successfully."
    redirect_to students_path
  end

  private

  def student_params
    params.require(:student).permit(:fname, :lname, :age, :email, :degree, :id)
  end

  def confirm_logged_in
    unless session[:user_id]
      flash[:notice] = "Please log in."
      redirect_to access_login_path
      # redirect_to prevents requested action from running
    end
  end
end
