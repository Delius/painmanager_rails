class UserConditionsController < ApplicationController
  before_action :set_user_condition, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @user_conditions = UserCondition.all
    respond_with(@user_conditions)
  end

  def show
    respond_with(@user_condition)
  end

  def new
    @user_condition = UserCondition.new
    respond_with(@user_condition)
  end

  def edit
  end

  def create
    @user_condition = UserCondition.new(user_condition_params)
    @user_condition.save
    respond_with(@user_condition)
  end

  def update
    @user_condition.update(user_condition_params)
    respond_with(@user_condition)
  end

  def destroy
    @user_condition.destroy
    respond_with(@user_condition)
  end

  private
    def set_user_condition
      @user_condition = UserCondition.find(params[:id])
    end

    def user_condition_params
      params.require(:user_condition).permit(:user_id, :user_condition_diagnosed, :user_condition_description, :user_condition_category)
    end
end
