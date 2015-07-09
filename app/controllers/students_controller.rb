class StudentsController < ApplicationController
  before_action :find_student, only: [:show, :edit, :update, :destroy]
  def index
    @students = Student.all
  end

  def new
    @student = Student.new(student_params)
  end

  def create
  end

  def edit
  end

  def show
  end

  def update
  end

  def destroy
  end

  private
  def student_params
    params.require(:student).permite(:name, :email, :password, :password_confirmation, :grade_level, :paret_name, :phone_number, :comment, :present)
  end

  def find_student
    @student = Student.find(params[:id])
  end
end
