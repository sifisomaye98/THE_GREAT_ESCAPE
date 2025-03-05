class AddStatusToRental < ActiveRecord::Migration[7.1]
  def change
    add_column :rentals, :status, :integer, default: 0
  end
end
