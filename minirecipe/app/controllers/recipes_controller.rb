class RecipesController < ApplicationController
  def index
    cursor = params[:cursor]
    limit = params[:limit]
    recipes = Recipe.includes(:user, :ingredients, :steps).cursor(cursor, limit)

    page_info = {
      next_page_cursor: recipes.last&.id.to_s,
      has_next_page: recipes.last.present? && Recipe.cursor(recipes.last.id, 1).exists?,
    }

    render json: recipes,
      meta: page_info,
      meta_key: :page_info,
      image_size: params[:image_size]
  end

  def show
    recipe = Recipe.includes(:user, :ingredients, :steps).find(params[:id])

    render json: recipe,
      image_size: params[:image_size]
  end
end
