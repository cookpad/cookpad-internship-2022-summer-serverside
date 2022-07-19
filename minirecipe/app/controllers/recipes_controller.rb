class RecipesController < ApplicationController
  def index
    @recipes = Recipe.first(10)
    render json: @recipes, adapter: :json
  end
end
