class CreateAirQualityIndices < ActiveRecord::Migration[5.2]
  def change
    create_table :air_quality_indices do |t|
      t.string :category
      t.string :color
      t.integer :start_index
      t.integer :end_index

      t.timestamps
    end
  end
end
