class AddAttachmentImageToWomen < ActiveRecord::Migration
  def self.up
    change_table :women do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :women, :image
  end
end
