class MembershipsController <ApplicationController
  before_action :set_group, only: [:new, :create, :destroy]

  def new
    @membership = @group.memberships.new
  end

  def create
    @membership = Membership.new(membership_params)
    @membership.user = current_user
    @membership.group = @group
    if @membership.save
      redirect_to groups_path(@group)
    else
      raise
      render :new
    end
  end

  def destroy
    @membership.destroy
    redirect_to root_path
  end

  private

  def set_group
    @group = Group.find(params[:group_id])
  end

  def membership_params
    params.require(:membership).permit(:answer)
  end
end
