class MembershipsController <ApplicationController
  before_action :set_group, only: [:new, :create, :destroy, :approve, :reject, :join]
  before_action :set_membership, only: [:destroy, :approve, :reject, :join]
  before_action :set_admin
  def new
    @membership = @group.memberships.new
  end

  def create
    @membership = Membership.new(membership_params)
    @membership.user = current_user
    @membership.group = @group
    if @membership.save
      redirect_to group_path(@group)
    else
      raise
      render :new
    end
  end

  def destroy
    @membership.destroy
    redirect_to root_path
  end


  def approve
    @membership.approve! if @admin
    redirect_to group_path(@group)
  end

  def reject
    @membership.reject! if @admin
    redirect_to group_path(@group)
  end

  def join
    @membership.join!
    redirect_to "https://chat.whatsapp.com/#{@group.link}"
  end

  private

  def set_group
    @group = Group.find(params[:group_id])
  end

  def membership_params
    params.require(:membership).permit(:answer)
  end

  def set_membership
    @membership = Membership.find(params[:membership_id])
  end

  def set_admin
    @admin = @group.memberships.admin.any? {|memships| memships.user == current_user}
  end
end
