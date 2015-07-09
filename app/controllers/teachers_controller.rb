class TeachersController < ApplicationController
  before_action :find_teacher, only: [:show, :edit, :update, :destroy]
  def index
    @teachers = Teacher.all
  end

  def new
    @teacher = Teacher.new(teacher_params)
  end

  def create
    if @teacher.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def teacher_params
    params.require(:teacher).permit(:name, :email, :password, :password_confirmation)
  end

  def find_teacher
    @teacher = Teacher.find(params[:find])
  end
end
