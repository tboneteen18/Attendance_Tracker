class ActivitiesController < ApplicationController
  before_action :find_activity, only:[:show, :edit, :update, :destroy]
  def index
    @activities = Activity.all
  end

  def new
    @activity = Activity.new(activity_params)
  end

  def create
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
  def find_activity
    @activity = Activity.find(params[:id])
  end

  def activity_params
    params.require(:activity).permit(:name, :date, :time, :location, :permission_slip)
  end
end
