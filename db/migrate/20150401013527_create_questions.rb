class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :contents
      t.integer :questionable_id
      t.string :questionable_type

      t.timestamps null: false
    end
  end
end
