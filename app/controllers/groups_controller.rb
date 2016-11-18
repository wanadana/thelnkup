class GroupsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_group, only: [:show]
  before_action :set_admin
  before_action :display_pending_memberships_if_ad

  def show
    @group = Group.find(params[:id])
    @comment = Comment.new
  end

  private

  def set_admin
    @admin = @group.memberships.admin.any? {|memships| memships.user == current_user}
  end

  def display_pending_memberships_if_ad
    @pending_memberships = @group.memberships.pending if @admin
  end

  def set_group
    @group = Group.find(params[:id])
  end

end
