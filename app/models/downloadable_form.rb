class DownloadableForm < ActiveRecord::Base

	validates :name, presence: true, uniqueness: true
	validates :color, presence: true
	validates :description, presence: true
  validates :priority, presence: true, numericality: true

  has_attached_file :file
  do_not_validate_attachment_file_type :file

  def file_attached?
    self.file.file?
  end

	def to_s
		return name
	end 
end
