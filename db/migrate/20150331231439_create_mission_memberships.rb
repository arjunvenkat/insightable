class CreateMissionMemberships < ActiveRecord::Migration
  def change
    create_table :mission_memberships do |t|
      t.integer :user_id
      t.integer :mission_id

      t.timestamps null: false
    end
  end
end
