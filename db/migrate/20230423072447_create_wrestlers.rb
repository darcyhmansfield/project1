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
      t.integer :team_id
      t.integer :promotion_id

      t.timestamps
    end
  end
end
