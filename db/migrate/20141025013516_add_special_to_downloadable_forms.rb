class AddSpecialToDownloadableForms < ActiveRecord::Migration
  def change
    add_column :downloadable_forms, :special, :boolean
  end
end
