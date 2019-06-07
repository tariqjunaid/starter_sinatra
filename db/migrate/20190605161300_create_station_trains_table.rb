class CreateStationTrainsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :station_trains do |t|
      t.integer :station_id
      t.integer :train_id
    end
  end
end
