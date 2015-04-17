class CreateBacklogs < ActiveRecord::Migration
  def change
    create_table :backlogs do |t|
      t.integer :mission_id

      t.timestamps null: false
    end
  end
end
