class CreateEntries < ActiveRecord::Migration[7.0]
  def change
    create_table :entries do |t|
      t.datetime :log_time
      t.float :latitude
      t.float :longitude
      t.string :location_name
      t.text :notes

      t.timestamps
    end
  end
end
