class AdminLogedInController < ApplicationController
  before_action :find_admin, only:[:show]
  def index
    @teacher = Teacher.all
    @student = Student.all
  end

  def show
    
  end

  private
  def find_admin
    @admin = Admin.find_by(id: params[:id])
  end
end
