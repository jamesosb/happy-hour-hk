class CreateOffers < ActiveRecord::Migration[5.1]
  def change
    create_table :offers do |t|
      t.datetime :start
      t.datetime :end
      t.string :offertype
      t.text :desc

      t.timestamps
    end
  end
end
