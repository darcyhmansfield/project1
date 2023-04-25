class CreateTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
      t.text :name
      t.float :total_rating
      t.integer :user_id

      t.timestamps
    end
  end
end
