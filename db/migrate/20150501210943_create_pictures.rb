class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.integer :pictureable_id
      t.string :pictureable_type
      t.string :caption

      t.timestamps null: false
    end
  end
end
