class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @pain_records = @user.pain_records.paginate(page: params[:page])

    @diaries  = @user.diaries.order('created_at asc').all


  end


  def user_params
    params.require(:user).permit(:user_name, :tag_list)
    end
end
