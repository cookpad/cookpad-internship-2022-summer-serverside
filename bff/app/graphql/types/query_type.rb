module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # TODO: remove me
    field :test_field, String, null: false,
      description: "An example field added by the generator"
    def test_field
      "Hello World!"
    end

    field :recipes, [Types::RecipeType], null: false
    def recipes
      client = MinirecipeClient.new
      res = client.get("/recipes")
      res[:recipes]
    end
  end
end
