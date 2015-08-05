class CreateSaloons < ActiveRecord::Migration
  def change
    create_table :saloons do |t|
      t.string :name
      t.text :image
      t.text :description
      t.integer :tel_number
      t.integer :price

      t.timestamps null: false
    end
  end
end
