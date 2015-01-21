class PainDurationsController < ApplicationController
  before_action :set_pain_duration, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @pain_durations = PainDuration.all
    respond_with(@pain_durations)
  end

  def show
    respond_with(@pain_duration)
  end

  def new
    @pain_duration = PainDuration.new
    respond_with(@pain_duration)
  end

  def edit
  end

  def create
    @pain_duration = PainDuration.new(pain_duration_params)
    @pain_duration.save
    respond_with(@pain_duration)
  end

  def update
    @pain_duration.update(pain_duration_params)
    respond_with(@pain_duration)
  end

  def destroy
    @pain_duration.destroy
    respond_with(@pain_duration)
  end

  private
    def set_pain_duration
      @pain_duration = PainDuration.find(params[:id])
    end

    def pain_duration_params
      params.require(:pain_duration).permit(:duration_level, :user_id, :diary_id)
    end
end
