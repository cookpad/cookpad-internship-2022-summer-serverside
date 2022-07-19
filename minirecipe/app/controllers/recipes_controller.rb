class RecipesController < ApplicationController
  def index
    @recipes = Recipe.includes(:user, :ingredients).first(10)
    render json: @recipes, adapter: :json, image_size: params[:image_size]
  end
end
