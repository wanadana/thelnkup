class Categories::GroupsController < ApplicationController
  before_action :authenticate_user!
  def index
    @groups = Group.find(params[:category_id])
  end

  def show
    @group = Group.find(params[:id])
    @comment = Comment.new
  end
end
