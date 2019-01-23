class Dose < ApplicationRecord
  belongs_to :cocktails
  belongs_to :ingredient
  validates :cocktail, uniqueness: { scope: :ingredient }
end
