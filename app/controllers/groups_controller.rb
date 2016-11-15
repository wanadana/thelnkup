class GroupsController < ApplicationController
  before_action :authenticate_user!
  def index
    @groups = Group.all
  end

  def show
    @group = Group.find(params[:id])
    @comment = Comment.new
  end
end
