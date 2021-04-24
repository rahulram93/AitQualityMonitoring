class CreateAirQualityCities < ActiveRecord::Migration[5.2]
  def change
    create_table :air_quality_cities do |t|
      t.decimal :air_quality_index, precision: 10, scale: 2
      t.string :city

      t.timestamps
    end
    add_index :air_quality_cities, :city
  end
end
