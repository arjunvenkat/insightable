class CreateEnvironments < ActiveRecord::Migration
  def change
    create_table :environments do |t|
      t.string :name
      t.text :desc

      t.timestamps null: false
    end
  end
end
