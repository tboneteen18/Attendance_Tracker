class StudentsController < ApplicationController
  before_action :find_student, only: [:show, :edit, :update, :destroy]
  def index
    @students = Student.all
  end

  def new
    @student = Student.new(student_params)
  end

  def create
    if @student.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  def show
  end

  def update
    if @student.update(student_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    if @student.destroy
      redirect_to root_path
    end
  end

  private
  def student_params
    params.require(:student).permite(:name, :email, :password, :password_confirmation, :grade_level, :paret_name, :phone_number, :comment, :present)
  end

  def find_student
    @student = Student.find(params[:id])
  end
end
