class AddPriorityToDownloadableForms < ActiveRecord::Migration
  def change
    add_column :downloadable_forms, :priority, :integer
  end
end
