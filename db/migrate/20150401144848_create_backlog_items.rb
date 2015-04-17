class CreateBacklogItems < ActiveRecord::Migration
  def change
    create_table :backlog_items do |t|
      t.integer :backlog_id
      t.integer :question_id
      t.integer :position
      t.integer :assigned_to

      t.timestamps null: false
    end
  end
end
