class AddUserRefToRentals < ActiveRecord::Migration[7.0]
  def change
    add_reference :rentals, :user, null: false, foreign_key: true
  end
end
