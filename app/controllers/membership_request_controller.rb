class MembershipRequestController < ApplicationController
  before_action :set_group, only: [:create, :destroy]

  def new
    @request = Request.new
  end

  def create
    @request = Request.new(request_params)
    @request.user = current_user
    if group.save
      redirect_to group_path(@request)
    else
      render :new
    end
  end

  def destroy
    @request.destroy
    redirect_to groups_path
  end

  private

  def request_params
    params.require(:request).permit(:answer)
  end

  def set_group
    @group = Group.find(params[:id])
  end
end
