class PainIntensityLevelsController < ApplicationController
  before_action :set_pain_intensity_level, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @pain_intensity_levels = PainIntensityLevel.all
    respond_with(@pain_intensity_levels)
  end

  def show
    respond_with(@pain_intensity_level)
  end

  def new
    @pain_intensity_level = PainIntensityLevel.new
    respond_with(@pain_intensity_level)
  end

  def edit
  end

  def create
    @pain_intensity_level = PainIntensityLevel.new(pain_intensity_level_params)
    @pain_intensity_level.save
    respond_with(@pain_intensity_level)
  end

  def update
    @pain_intensity_level.update(pain_intensity_level_params)
    respond_with(@pain_intensity_level)
  end

  def destroy
    @pain_intensity_level.destroy
    respond_with(@pain_intensity_level)
  end

  private
    def set_pain_intensity_level
      @pain_intensity_level = PainIntensityLevel.find(params[:id])
    end

    def pain_intensity_level_params
      params.require(:pain_intensity_level).permit(:intensity_level, :user_id, :diary_id)
    end
end
