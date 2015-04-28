class CreateInsights < ActiveRecord::Migration
  def change
    create_table :insights do |t|
      t.string :contents
      t.integer :insightable_id
      t.string :insightable_type
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
