ActiveAdmin.register Guideline do 
  controller do
    def permitted_params
      params.permit!
    end
  end

	filter :title
	filter :posted_at
	filter :guideline_type

	index do 
		column :title
		column :posted_at
		column :guideline_type
    column :special
		actions
	end

	form do |f|
		f.inputs "Details" do
			f.input :title
			f.input :posted_at, as: :datepicker
      f.input :special
			f.input :guideline_type, as: :select, collection: ["School", "Auxiliaries", "Central Services", "Others"]
			f.input :content, as: :html_editor
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
