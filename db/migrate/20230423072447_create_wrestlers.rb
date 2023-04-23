class CreateWrestlers < ActiveRecord::Migration[5.2]
  def change
    create_table :wrestlers do |t|
      t.text :name
      t.text :image
      t.text :country
      t.integer :height
      t.integer :weight
      t.integer :exp
      t.float :rating

      t.timestamps
    end
  end
end
