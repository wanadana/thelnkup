class CategoriesController < ApplicationController

  def index
    @categories = Category.all.sort
  end

  def show
    @category = Category.find(params[:id])
  end
end
