class PainRecordsController < ApplicationController
  before_action :set_pain_record, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @pain_records = PainRecord.all
    respond_with(@pain_records)
  end

  def show
    respond_with(@pain_record)
  end

  def new
    @pain_record = PainRecord.new
    respond_with(@pain_record)
  end

  def edit
  end

  def create
    @pain_record = PainRecord.new(pain_record_params)
    @pain_record.save
    respond_with(@pain_record)
  end

  def update
    @pain_record.update(pain_record_params)
    respond_with(@pain_record)
  end

  def destroy
    @pain_record.destroy
    respond_with(@pain_record)
  end

  private
    def set_pain_record
      @pain_record = PainRecord.find(params[:id])
    end

    def pain_record_params
      params.require(:pain_record).permit(:user_id, :pain_record_description, :pain_record_pain_level, :pain_record_pain_placement, :pain_record_pain_type, :pain_record_pain_duration)
    end
end
