class CreateTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
      t.text :name
      t.text :members
      t.float :total_rating

      t.timestamps
    end
  end
end
