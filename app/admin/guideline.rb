ActiveAdmin.register Guideline do 
	permit_params :title, :content, :posted_at, :guideline_type 

	filter :title
	filter :posted_at
	filter :guideline_type

	index do 
		column :title
		column :posted_at
		column :guideline_type

		actions
	end

	form do |f|
		f.inputs "Details" do
			f.input :title
			f.input :content
			f.input :guideline_type, as: :select, collection: ["School", "Auxiliaries", "Central Services", "Others"]
			f.input :posted_at
		end	

		f.actions

	end		

	show do |v|
		attributes_table do
			row :title
			row :content
			row :guideline_type
			row :posted_at
		end
	end
end