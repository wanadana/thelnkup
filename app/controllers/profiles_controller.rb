class ProfilesController < ApplicationController
  def show
    @user = current_user
    @admin_memberships = current_user.memberships.admin
    @approved_memberships = current_user.memberships.approved
    @joined_memberships = current_user.memberships.joined
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

