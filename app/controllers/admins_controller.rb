class AdminsController < ApplicationController
  before_action :find_admin, only: [:edit, :show, :update, :destroy] 

  def index
    @admins = Admin.all
  end

  def new
    @admin = Admin.new(admin_params)
  end

  def create
    if @admin.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
  end

  def update
  end

  def edit
  end

  def destroy
  end

  private
  def admin_params
    params.require(:admin).permit(:name, :email, :password, :password_confirmation)
  end

  def find_admin
    @admin = Admin.find(parmas[:id])
  end
end
