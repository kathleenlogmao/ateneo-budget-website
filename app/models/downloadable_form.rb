class DownloadableForm < ActiveRecord::Base

	validates :name, presence: true, uniqueness: true
	validates :color, presence: true
	validates :description, presence: true

	def to_s
		return name
	end 
end
