class UserMoodsController < ApplicationController
  before_action :set_user_mood, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @user_moods = UserMood.all
    respond_with(@user_moods)
  end

  def show
    respond_with(@user_mood)
  end

  def new
    @user_mood = UserMood.new
    respond_with(@user_mood)
  end

  def edit
  end

  def create
    @user_mood = UserMood.new(user_mood_params)
    @user_mood.save
    respond_with(@user_mood)
  end

  def update
    @user_mood.update(user_mood_params)
    respond_with(@user_mood)
  end

  def destroy
    @user_mood.destroy
    respond_with(@user_mood)
  end

  private
    def set_user_mood
      @user_mood = UserMood.find(params[:id])
    end

    def user_mood_params
      params.require(:user_mood).permit(:user_id, :user_mood_name)
    end
end
