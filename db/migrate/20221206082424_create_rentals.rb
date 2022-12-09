class CreateRentals < ActiveRecord::Migration[7.0]
  def change
    create_table :rentals do |t|
      t.string :car_brand
      t.date :rent_date
      t.integer :number_of_days
      t.string :location

      t.timestamps
    end
  end
end
