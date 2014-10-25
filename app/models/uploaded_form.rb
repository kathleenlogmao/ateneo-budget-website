class UploadedForm < ActiveRecord::Base
  validates :uploaded_by, presence: true
  validates :unit, presence: true

  has_attached_file :file
  validates_attachment :file, presence: true, size: { in: 0.megabytes..2.megabytes }, :if => :file_attached?

  def file_attached?
    self.file.file?
  end
end
