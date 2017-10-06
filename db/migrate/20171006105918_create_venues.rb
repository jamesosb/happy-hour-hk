class CreateVenues < ActiveRecord::Migration[5.1]
  def change
    create_table :venues do |t|
      t.string :vtype
      t.string :region
      t.string :name
      t.text :desc
      t.boolean :exists
      t.float :latitude , {:precision=>10, :scale=>6}
      t.float :longitude, {:precision=>10, :scale=>6}

      t.timestamps
    end
  end
end
