class UploadedForm < ActiveRecord::Base
  validates :uploaded_by, presence: true
  validates :unit, presence: true

  has_attached_file :file
  #validates_attachment_file_name :file, :matches => [/doc\Z/, /xlsx?g\Z/, /xls\Z/, /docx\Z/]
  validates_attachment_content_type :file, :content_type => %w(application/xml application/vnd.ms-excel application/vnd.openxmlformats-officedocument.spreadsheetml.sheet)

  def file_attached?
    self.file.file?
  end
end
