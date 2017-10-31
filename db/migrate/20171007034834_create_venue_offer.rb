class CreateVenueOffer < ActiveRecord::Migration[5.1]
  def change
    create_table :venue_offer do |t|
      t.integer :venue_id
      t.integer :offer_id
      t.timestamps
    end
  end
end
