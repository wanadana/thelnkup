class Categories::GroupsController < ApplicationController
  before_action :authenticate_user!
  def index
    @category = Category.find(params[:category_id])
    @groups = @category.groups
  end

  # def show
  #   @group = Group.find(params[:id])
  #   @category = Category.find(params[:category_id])
  #   @comment = Comment.new
  # end
end
