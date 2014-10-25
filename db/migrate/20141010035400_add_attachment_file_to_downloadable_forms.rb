class AddAttachmentFileToDownloadableForms < ActiveRecord::Migration
  def self.up
    change_table :downloadable_forms do |t|
      t.attachment :file
    end
  end

  def self.down
    remove_attachment :downloadable_forms, :file
  end
end
