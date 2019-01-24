class Dose < ApplicationRecord
  belongs_to :cocktail, foreign_key: :cocktails_id
  belongs_to :ingredient
  validates :cocktail, uniqueness: { scope: :ingredient }
end
