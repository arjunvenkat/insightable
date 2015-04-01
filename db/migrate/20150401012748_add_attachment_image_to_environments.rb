class AddAttachmentImageToEnvironments < ActiveRecord::Migration
  def self.up
    change_table :environments do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :environments, :image
  end
end
