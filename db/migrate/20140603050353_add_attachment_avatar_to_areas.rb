class AddAttachmentAvatarToAreas < ActiveRecord::Migration
  def self.up
    change_table :areas do |t|
      t.attachment :avatar
    end
  end

  def self.down
    drop_attached_file :areas, :avatar
  end
end
