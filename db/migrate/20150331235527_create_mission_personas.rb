class CreateMissionPersonas < ActiveRecord::Migration
  def change
    create_table :mission_personas do |t|
      t.integer :mission_id
      t.integer :persona_id

      t.timestamps null: false
    end
  end
end
