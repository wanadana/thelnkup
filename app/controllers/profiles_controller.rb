class ProfilesController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = current_user
    @usergroups = current_user.memberships.where(status:"approved")
    @memberships = current_user.memberships.where(status:"pending")
  end

  def create

  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    @user.update(user_params)
    redirect_to profile_path
  end

  private

  def user_params
    params.require(:user).permit(:location, :mobile, :photo_cache, :photo)
  end
end

