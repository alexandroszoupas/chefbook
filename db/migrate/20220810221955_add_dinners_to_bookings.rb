class AddDinnersToBookings < ActiveRecord::Migration[6.1]
  def change
    add_column :bookings, :diners, :integer
  end
end
