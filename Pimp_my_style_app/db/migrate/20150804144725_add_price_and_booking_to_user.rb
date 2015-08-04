class AddPriceAndBookingToUser < ActiveRecord::Migration
  def change
    add_column :users, :price, :integer
    add_column :users, :availability, :datetime
  end
end
