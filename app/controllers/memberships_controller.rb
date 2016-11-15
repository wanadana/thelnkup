class MembershipsControler <ApplicationController
  before_action :set_group, only: [:create, :destroy]

  def new
    @membership = Membership.new
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
    @group = Group.find(params[:id])
  end
end
