class Users::GroupsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_group, only: [:edit, :destroy, :index, :show]

  def index
    @group = Group.all
  end

  def new
    @group = Group.new
    @categories_with_id = Category.pluck(:name, :id)
  end

  def create
    @category = Category.find(params[:group][:category_id])
    @group = Group.new(group_params)
    # @group.users << current_user

    if @group.save
      @membership = Membership.create(user: current_user, status: 'approved', admin: true, group: @group)
      redirect_to group_path(@group)
    else
      @categories_with_id = Category.pluck(:name, :id)
      render :new
    end
  end

  def edit
    render "Access denied" unless current_user = @group.user
  end

  def update
    @group.update(group_params)
    if @group.save
      redirect_to group_path(@group)
    else
      render :edit
    end
  end

  def destroy
    @category = Category.find(params[:id])
    @group.destroy
      redirect_to category_groups_path(@group.category)
  end

  private

  def group_params
    params.require(:group).permit(:title, :description, :location, :link, :capacity, :photo, :photo_cache, :question, :category_id)
  end

  def set_group
    @group = Group.find(params[:id])
  end
end

