class GroupsController < ApplicationController
  before_action :authenticate_user!

  def show
    set_group
    set_admin
    display_pending_memberships_if_admin
    @comment = Comment.new
  end

  private

  def set_admin
    @admin = @group.memberships.admin.any? {|memships| memships.user == current_user}
  end

  def display_pending_memberships_if_admin
    @pending_memberships = @group.memberships.pending if @admin
  end

  def set_group
    @group = Group.find(params[:id])
  end

end
