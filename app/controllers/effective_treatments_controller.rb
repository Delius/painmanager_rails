class EffectiveTreatmentsController < ApplicationController
  before_action :set_effective_treatment, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @effective_treatments = EffectiveTreatment.all
    respond_with(@effective_treatments)
  end

  def show
    respond_with(@effective_treatment)
  end

  def new
    @effective_treatment = EffectiveTreatment.new
    respond_with(@effective_treatment)
  end

  def edit
  end

  def create
    @effective_treatment = EffectiveTreatment.new(effective_treatment_params)
    @effective_treatment.save
    respond_with(@effective_treatment)
  end

  def update
    @effective_treatment.update(effective_treatment_params)
    respond_with(@effective_treatment)
  end

  def destroy
    @effective_treatment.destroy
    respond_with(@effective_treatment)
  end

  private
    def set_effective_treatment
      @effective_treatment = EffectiveTreatment.find(params[:id])
    end

    def effective_treatment_params
      params.require(:effective_treatment).permit(:name, :user_id, :diary_id)
    end
end
