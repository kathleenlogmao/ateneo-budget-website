class GuidelinesController < ApplicationController 

	def index
		@g = params[:g]
		@guidelines = Guideline.where(guideline_type: @g)

	end
end