class MentalStatesController < ApplicationController
  before_action :set_mental_state, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @mental_states = MentalState.all
    respond_with(@mental_states)
  end

  def show
    respond_with(@mental_state)
  end

  def new
    @mental_state = MentalState.new
    respond_with(@mental_state)
  end

  def edit
  end

  def create
    @mental_state = MentalState.new(mental_state_params)
    @mental_state.save
    respond_with(@mental_state)
  end

  def update
    @mental_state.update(mental_state_params)
    respond_with(@mental_state)
  end

  def destroy
    @mental_state.destroy
    respond_with(@mental_state)
  end

  private
    def set_mental_state
      @mental_state = MentalState.find(params[:id])
    end

    def mental_state_params
      params.require(:mental_state).permit(:disposition, :stress, :mood_stability, :user_id, :diary_id)
    end
end
