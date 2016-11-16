class RequireInfosController < ApplicationController
  skip_before_action :profile_requirement_check
  def new
    @user = current_user
  end

  def create
    @user = current_user
    @user.update(user_params)
    redirect_to profile_path
  end

  private

  def user_params
    params.require(:user).permit(:location, :mobile, :photo_cache, :photo)
  end
end
