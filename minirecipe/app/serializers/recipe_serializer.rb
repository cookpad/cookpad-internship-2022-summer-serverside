class RecipeSerializer < ActiveModel::Serializer
  has_many :ingredients
  belongs_to :user

  attributes :id, :title, :description, :image_url

  def image_url
    object.image_url(instance_options[:image_size])
  end
end
