class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  #ingredients, dependent: :destroy


  validates :name, uniqueness: true, presence: true
end


