class PainDescriptionsController < ApplicationController
  before_action :set_pain_description, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @pain_descriptions = PainDescription.all
    respond_with(@pain_descriptions)
  end

  def show
    respond_with(@pain_description)
  end

  def new
    @pain_description = PainDescription.new
    respond_with(@pain_description)
  end

  def edit
  end

  def create
    @pain_description = PainDescription.new(pain_description_params)
    @pain_description.save
    respond_with(@pain_description)
  end

  def update
    @pain_description.update(pain_description_params)
    respond_with(@pain_description)
  end

  def destroy
    @pain_description.destroy
    respond_with(@pain_description)
  end

  private
    def set_pain_description
      @pain_description = PainDescription.find(params[:id])
    end

    def pain_description_params
      params.require(:pain_description).permit(:description_name, :user_id, :diary_id)
    end
end
