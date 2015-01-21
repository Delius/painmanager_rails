class ActivityLevelsController < ApplicationController
  before_action :set_activity_level, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @activity_levels = ActivityLevel.all
    respond_with(@activity_levels)
  end

  def show
    respond_with(@activity_level)
  end

  def new
    @activity_level = ActivityLevel.new
    respond_with(@activity_level)
  end

  def edit
  end

  def create
    @activity_level = ActivityLevel.new(activity_level_params)
    @activity_level.save
    respond_with(@activity_level)
  end

  def update
    @activity_level.update(activity_level_params)
    respond_with(@activity_level)
  end

  def destroy
    @activity_level.destroy
    respond_with(@activity_level)
  end

  private
    def set_activity_level
      @activity_level = ActivityLevel.find(params[:id])
    end

    def activity_level_params
      params.require(:activity_level).permit(:act_name, :user_id, :diary_id)
    end
end
