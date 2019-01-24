class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy, foreign_key: :cocktails_id
  has_many :ingredients, through: :doses
  has_many  :reviews
  validates :name, presence: true, uniqueness: true
end
