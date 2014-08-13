class Guideline < ActiveRecord::Base

	validates :title, presence:true, uniqueness:true
	validates :content, presence:true
	validates :posted_at, presence:true
	validates :guideline_type, presence:true

	def to_a 
		return self.title 
	end

	def to_b 
		return self.content
	end

	def to_c
		return "#{self.title}" - "#{self.content}" - "#{self.posted_at}"
	end
end
