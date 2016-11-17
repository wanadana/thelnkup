class Users::GroupsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_group, only: [:edit, :destroy]

  def new
    @group = Group.new
    @categories_with_id = Category.pluck(:name, :id)
  end

  def create
    @group = Group.new(group_params)
    @membership = Membership.create(user: current_user, status: 'approved', admin: true)
    @group.memberships.build(admin: true, user: current_user)
    # @group.users << current_user

    if @group.save
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
    @group.destroy
    redirect_to groups_path
  end

  private

  def group_params
    params.require(:group).permit(:title, :description, :location, :link, :capacity, :photo, :photo_cache, :question, :category_id)
  end

  def set_group
    @group = Group.find(params[:id])
  end

end

