class CommentsController < ApplicationController

  def create
    @group = Group.find(params[:group_id])
    @review = Review.new(review_params)
    @review.group = @group
    if @review.save
      # If the request is AJAX - do this fancy JS stuff to show the new review
      # If the request is (boring old) HTTP - do the redirect below
      respond_to do |format|
        format.html { redirect_to group_path(@group) }
        format.js # render app/views/reviews/create.js.erb
      end
    else
      respond_to do |format|
        format.html { render 'group/show' }
        format.js # render app/views/reviews/create.js.erb
      end
    end
  end

  def destroy
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.find(params[:id])
    @review.destroy

    respond_to do |format|
      format.html { redirect_to restaurant_path(@restaurant) }
      format.js
    end

  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end
