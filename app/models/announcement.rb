class Announcement < ActiveRecord::Base
	validates :title, presence: true, uniqueness: true
	validates :announced_at, presence: true
	validates :content, presence: true

	def to_s 
		return self.title
	end

	def to_s_complete
		return "#{self.title} - #{self.announced_at}"	
	end
end
