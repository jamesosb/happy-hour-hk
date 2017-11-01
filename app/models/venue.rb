class Venue < ApplicationRecord
  
  has_many :deals
  has_many :offers, through: :deals

  validates :name, presence: true
end
