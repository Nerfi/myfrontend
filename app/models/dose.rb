class Dose < ApplicationRecord
  belongs_to :cocktail, foreign_key: :cocktails_id #de esta forma solucionamos el problema por el cual no podia crear un cocktel con su dosi
  # tambine pq hemos quitado la `s` de cocktails es cocktail
  belongs_to :ingredient
  validates :cocktail, uniqueness: { scope: :ingredient }
end
