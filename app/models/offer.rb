class Offer < ApplicationRecord
  has_many :deals
  has_many :venues, through: :deals
end
