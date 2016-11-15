class GroupsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_categories, only: [:new, :create, :edit, :update]
  before_action :set_group, only: [:edit, :destroy]

  def new
    @group = Group.new
  end

  def create
    @group = Group.new(group_params)
    @group.user = current_user
    if group.save
      redirect_to groups_path
    else
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
    @group.destroy
    redirect_to groups_path
  end

  private

  def group_params
    params.require(:group).permit(:title, :description, :city, :link, :capacity, :category, :photo, :photo_cache, :question)
  end

  def set_group
    @group = Group.find(params[:id])
  end

  def set_categories
    @categories = Group::CATEGORIES
  end
end

