class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.text :email
      t.boolean :admin, :default => false
      t.integer :team_id
      t.timestamps
    end
  end
end
