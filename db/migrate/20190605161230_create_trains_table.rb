class CreateTrainsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :trains do |t|
      t.string :name
      t.string :series
      t.integer :cars
    end
  end
end
