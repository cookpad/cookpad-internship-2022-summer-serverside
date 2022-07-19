module Types
  class RecipeType < Types::BaseObject
    field :id, ID, null: false
    field :title, String, null: false
    field :description, String, null: false
    field :image_url, String
    field :user, Types::UserType, null: false
    field :ingredients, [Types::IngredientType], null: false
  end
end
