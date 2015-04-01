class CreateMissionEnvironments < ActiveRecord::Migration
  def change
    create_table :mission_environments do |t|
      t.integer :mission_id
      t.integer :environment_id

      t.timestamps null: false
    end
  end
end
