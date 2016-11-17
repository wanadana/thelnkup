class GroupsController < ApplicationController
  before_action :authenticate_user!

  def index
    @groups = Group.search(params[:search]).sorted
  end

  def show
    @group = Group.find(params[:id])
    @comment = Comment.new
  end
end
