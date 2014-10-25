class GuidelinesController < ApplicationController 

	def index
		@g = params[:g] || "School"
		@guidelines = Guideline.where("guideline_type = '#{@g}'").order("posted_at DESC")
	end

  def special
		@g = params[:g] || "School"
		@guidelines = Guideline.where("guideline_type = '#{@g}'").order("posted_at DESC")
  end

  def special_downloadable_forms
		@downloadable_forms = DownloadableForm.all.order("priority ASC")
  end
end
