ActiveAdmin.register Announcement do
	permit_params :title, :announced_at, :content 

	filter :title
	filter :announced_at

	index do 
		column :title
		column :announced_at
		actions
	end

	form do |f|
		f.inputs "Details" do
			f.input :title
			f.input :announced_at, as: :datepicker
			f.input :content, as: :html_editor
		end
		f.actions
	end

	show do |ad|
		attributes_table do
			row :title
			row :announced_at
			row :content do
        ad.content.html_safe
      end

		end
	end

	
end
