class CreateTeamsWrestlers < ActiveRecord::Migration[5.2]
  def change
    create_join_table :teams, :wrestlers do |t|
      t.integer :team_id
      t.integer :wrestler_id
    end
  end
end
