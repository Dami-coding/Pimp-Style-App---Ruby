class AddSaloonIdToUser < ActiveRecord::Migration
  def change
    add_column :users, :saloon_id, :integer
  end
end
