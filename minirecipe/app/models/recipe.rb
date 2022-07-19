class Recipe < ApplicationRecord
  include Tofuable

  has_many :ingredients, -> { order(:position) }
  belongs_to :user
end
