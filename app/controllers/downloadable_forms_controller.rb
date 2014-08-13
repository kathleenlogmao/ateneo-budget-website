class DownloadableFormsController < ApplicationController 

	def index
		@downloadable_forms = DownloadableForm.all

	end
end