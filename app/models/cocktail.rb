class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy, foreign_key: :cocktails_id # de esta forma resolvemos el problema al crear dosis y cocktail
  has_many :ingredients, through: :doses
  has_many  :reviews
  validates :name, presence: true, uniqueness: true
end
