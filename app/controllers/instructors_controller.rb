class InstructorsController < ApplicationController

  before_action :confirm_logged_in

  def index
    @instructors = Instructor.order(:lname)
  end

  def show
    @instructor = Instructor.find(params[:id])
  end

  def new
    @instructor = Instructor.new
  end

  def create
    @instructor = Instructor.new(instructor_params)
    if @instructor.save
      flash[:notice] = "Instructor created successfully."
      redirect_to instructors_path
    else
      redirect_to 'new'
    end
  end

  def edit
    @instructor = Instructor.find(params[:id])
  end

  def update
    @instructor = Instructor.find(params[:id])
    if @instructor.update(instructor_params)
      flash[:notice] = "Instructor updated successfully."
      redirect_to instructor_path @instructor
    else
      redirect_to 'edit'
    end
  end

  def delete
    @instructor = Instructor.find(params[:id])

  end

  def destroy
    editcohort = Cohort.where(instructor_id: params[:id])
    editcohort.each do |c|
      c.instructor_id = nil
      c.save
    end
    Instructor.find(params[:id]).destroy
    flash[:notice] = "Instructor destroyed successfully."
    redirect_to instructors_path
  end

  #http://edgeguides.rubyonrails.org/action_controller_overview.html#strong-parameters
  private
  # Using a private method to encapsulate the permissible parameters is
  # just a good pattern since you'll be able to reuse the same permit
  # list between create and update. Also, you can specialize this method
  # with per-user checking of permissible attributes.
  def instructor_params
    params.require(:instructor).permit(:fname, :lname, :email, :age, :salary, :degree, :id)
  end

  def confirm_logged_in
    unless session[:user_id]
      flash[:notice] = "Please log in."
      redirect_to access_login_path
      # redirect_to prevents requested action from running
    end
  end
end
