class ChangeNameOfVenueOffersToDeals < ActiveRecord::Migration[5.1]
  def change
    rename_table :venue_offer, :deals
  end
end
