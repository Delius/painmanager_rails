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
    respond_with(@diary)
  end

  def edit
  end

  def create
    @user = current_user
    @diary = @user.diaries.create(diary_params)
    @diary.save
    respond_with(@diary)
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
                                    pain_onset_trackers_attributes: [:pain_onset_speed,:user_id],
                                    pain_intensity_levels_attributes: [:intensity_level,:user_id],
                                    pain_descriptions_attributes: [:description_name,:user_id])
    end
end
