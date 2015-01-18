class PainTriggersController < ApplicationController
  before_action :set_pain_trigger, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @pain_triggers = PainTrigger.all
    respond_with(@pain_triggers)
  end

  def show
    respond_with(@pain_trigger)
  end

  def new
    @pain_trigger = PainTrigger.new
    respond_with(@pain_trigger)
  end

  def edit
  end

  def create
    @pain_trigger = PainTrigger.new(pain_trigger_params)
    @pain_trigger.save
    respond_with(@pain_trigger)
  end

  def update
    @pain_trigger.update(pain_trigger_params)
    respond_with(@pain_trigger)
  end

  def destroy
    @pain_trigger.destroy
    respond_with(@pain_trigger)
  end

  private
    def set_pain_trigger
      @pain_trigger = PainTrigger.find(params[:id])
    end

    def pain_trigger_params
      params.require(:pain_trigger).permit(:name, :user_id, :diary_id, :diary_id, :user_id)
    end
end
