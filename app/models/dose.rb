class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient

  validates :cocktail, uniqueness: { scope: :ingredient }
  #validates [:cocktail, :ingredient], uniqueness: true
  #A dose must have a description, a cocktail and an ingredient, and [cocktail, ingredient] pairings should be unique.
end
