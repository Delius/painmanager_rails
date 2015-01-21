class OtherSymptomsController < ApplicationController
  before_action :set_other_symptom, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @other_symptoms = OtherSymptom.all
    respond_with(@other_symptoms)
  end

  def show
    respond_with(@other_symptom)
  end

  def new
    @other_symptom = OtherSymptom.new
    respond_with(@other_symptom)
  end

  def edit
  end

  def create
    @other_symptom = OtherSymptom.new(other_symptom_params)
    @other_symptom.save
    respond_with(@other_symptom)
  end

  def update
    @other_symptom.update(other_symptom_params)
    respond_with(@other_symptom)
  end

  def destroy
    @other_symptom.destroy
    respond_with(@other_symptom)
  end

  private
    def set_other_symptom
      @other_symptom = OtherSymptom.find(params[:id])
    end

    def other_symptom_params
      params.require(:other_symptom).permit(:symotom_name, :user_id, :diary_id)
    end
end
