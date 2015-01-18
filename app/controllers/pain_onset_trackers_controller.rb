class PainOnsetTrackersController < ApplicationController
  before_action :set_pain_onset_tracker, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @pain_onset_trackers = PainOnsetTracker.all
    respond_with(@pain_onset_trackers)
  end

  def show
    respond_with(@pain_onset_tracker)
  end

  def new
    @pain_onset_tracker = PainOnsetTracker.new
    respond_with(@pain_onset_tracker)
  end

  def edit
  end

  def create
    @pain_onset_tracker = PainOnsetTracker.new(pain_onset_tracker_params)
    @pain_onset_tracker.save
    respond_with(@pain_onset_tracker)
  end

  def update
    @pain_onset_tracker.update(pain_onset_tracker_params)
    respond_with(@pain_onset_tracker)
  end

  def destroy
    @pain_onset_tracker.destroy
    respond_with(@pain_onset_tracker)
  end

  private
    def set_pain_onset_tracker
      @pain_onset_tracker = PainOnsetTracker.find(params[:id])
    end

    def pain_onset_tracker_params
      params.require(:pain_onset_tracker).permit(:diary_id, :pain_onset_speed,:user_id, :diary_id)
    end
end
