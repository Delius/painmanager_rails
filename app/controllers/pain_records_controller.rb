class PainRecordsController < ApplicationController
  before_action :set_pain_record, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!, only: [:new, :edit, :create,:update, :destroy]

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
    @pain_record = current_user.pain_records.build(pain_record_params)
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
      params.require(:pain_record).permit(
                                          :user_id,
                                          :created_at,
                                          :updated_at,
                                          :limited_activities,
                                          :limited_activities_name,
                                          :all_medicines_taken,
                                          :unrelieved_pain,
                                          :how_often_unrelieved_pain,
                                          :is_activity_starting_pain,
                                          :activity_starting_pain_name,
                                          :average_pain_level,
                                          :used_other_actions_to_relieve_pain,
                                          :pain_placement,
                                          :side_effects_after_pain_medicine,
                                          :skipped_medicines,
                                          :skipped_medicines_why,
                                          :called_doctor_because_of_pain,
                                          :slept_through_night,
                                          :slept_through_night_disrupted_times,
                                          :slept_hours_night,
                                          :satisfied_with_pain_management,
                                          :why_satisfied_or_not,
                                          :acceptable_pain_level,
                                          :had_pain_today,
                                          :other_actions_to_relieve_pain_name
      )
    end
end
