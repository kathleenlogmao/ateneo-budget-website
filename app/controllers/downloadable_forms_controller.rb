class DownloadableFormsController < ApplicationController 

	def index
		@downloadable_forms = DownloadableForm.all.order("priority ASC")
	end
end
