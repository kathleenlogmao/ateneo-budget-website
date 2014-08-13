ActiveAdmin.register DownloadableForm do 
	permit_params :name, :color, :description

	filter :name
	filter :color

	index do
		column :name
		column :color
		column :description

		actions
	end

	form do |f|
		f.inputs "Details" do 
			f.input :name
			f.input :color, input_html: {class: 'colorpicker'}
			f.input :description
		end

		f.actions
	end
		
	show do |v|
		attributes_table do
			row :name
			row :color
			row :description
		end
	end
end