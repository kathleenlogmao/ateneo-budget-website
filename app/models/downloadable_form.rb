class DownloadableForm < ActiveRecord::Base

	validates :name, presence: true, uniqueness: true
	validates :color, presence: true
	validates :description, presence: true
  validates :priority, presence: true, numericality: true

  has_attached_file :file
  validates_attachment_file_name :file, :matches => [/doc\Z/, /xlsx?g\Z/, /xls\Z/, /docx\Z/]

  def file_attached?
    self.file.file?
  end

	def to_s
		return name
	end 
end
