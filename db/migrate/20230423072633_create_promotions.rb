class CreatePromotions < ActiveRecord::Migration[5.2]
  def change
    create_table :promotions do |t|
      t.text :abbrev
      t.text :logo
      t.text :name
      t.text :country
      t.integer :year
      t.text :instagram
      t.integer :wrestler_id
      t.timestamps
    end
  end
end
