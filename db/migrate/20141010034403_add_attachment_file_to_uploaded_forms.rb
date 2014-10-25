class AddAttachmentFileToUploadedForms < ActiveRecord::Migration
  def self.up
    change_table :uploaded_forms do |t|
      t.attachment :file
    end
  end

  def self.down
    remove_attachment :uploaded_forms, :file
  end
end
