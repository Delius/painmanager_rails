class DiariesController < ApplicationController
  before_action :set_diary, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :edit, :create, :update, :destroy]
  respond_to :html

  def index
    @diaries = Diary.all
    respond_with(@diaries)
  end

  def show
    respond_with(@diary)
    @diaries = Diary.find(params[:id])

  end

  def new
    @diary = Diary.new
    @diary.pain_onset_trackers.build
    @diary.pain_triggers.build
    @diary.pain_intensity_levels.build
    @diary.pain_descriptions.build
    @diary.activity_levels.build
    @diary.effective_treatments.build
    @diary.mental_states.build
    @diary.other_symptoms.build
    @diary.pain_durations.build
    respond_with(@diary)
  end

  def edit
  end

  def create
    @user = current_user
    @diary = @user.diaries.create(diary_params)
    @diary.save
    respond_with(@user)
  end

  def update
    @diary.update(diary_params)
    respond_with(@diary)
  end

  def destroy
    @diary.destroy
    respond_with(@diary)
  end

  private
    def set_diary
      @diary = Diary.find(params[:id])
    end

    def diary_params
      params.require(:diary).permit(:name, :user_id,
                                    pain_triggers_attributes: [:user_id,:name =>[] ],
                                    other_symptoms_attributes: [:user_id,:symotom_name =>[] ],
                                    mental_states_attributes: [:user_id,:disposition, :stress, :mood_stability],
                                    activity_levels_attributes: [:user_id,:act_level],
                                    pain_durations_attributes: [:user_id,:duration_level],
                                    effective_treatments_attributes: [:user_id,:name => []],
                                    pain_onset_trackers_attributes: [:pain_onset_speed,:user_id],
                                    pain_intensity_levels_attributes: [:intensity_level,:user_id],
                                    pain_descriptions_attributes: [:description_name,:user_id])
    end
end
