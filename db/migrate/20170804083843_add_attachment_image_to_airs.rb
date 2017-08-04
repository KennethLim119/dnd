class AddAttachmentImageToAirs < ActiveRecord::Migration
  def self.up
    change_table :airs do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :airs, :image
  end
end
