class CreatePersonas < ActiveRecord::Migration
  def change
    create_table :personas do |t|
      t.string :name
      t.text :goals

      t.timestamps null: false
    end
  end
end
