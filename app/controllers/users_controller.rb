class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @pain_records = @user.pain_records.paginate(page: params[:page])
    # @pain_onset_trackers = @diary.pain_onset_trackers
    # @diaries  = @user.diaries
    # @pain_onset_trackers  = @diary.pain_onset_tracker

  end


  def user_params
    params.require(:user).permit(:user_name, tag_list)
    end
end
