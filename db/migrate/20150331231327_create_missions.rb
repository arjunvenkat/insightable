class CreateMissions < ActiveRecord::Migration
  def change
    create_table :missions do |t|
      t.date :date
      t.string :company
      t.string :customer_point_of_contact

      t.timestamps null: false
    end
  end
end
