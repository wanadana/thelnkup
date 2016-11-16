class MembershipsController <ApplicationController
  before_action :set_group, only: [:new, :create, :destroy]

  def new
    @membership = @group.memberships.new
  end

  def create
    @membership = Membership.create(user: current_user)
  end

  def destroy
    @membership.destroy
    redirect_to root_path
  end

  private

  def set_group
    @group = Group.find(params[:group_id])
  end
end
