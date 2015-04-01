class CreateMissionProcedures < ActiveRecord::Migration
  def change
    create_table :mission_procedures do |t|
      t.integer :mission_id
      t.integer :procedure_id

      t.timestamps null: false
    end
  end
end
