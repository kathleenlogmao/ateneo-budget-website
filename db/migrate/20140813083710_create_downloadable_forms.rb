class CreateDownloadableForms < ActiveRecord::Migration
  def change
    create_table :downloadable_forms do |t|
      t.string :name
      t.string :color
      t.text :description

      t.timestamps
    end
  end
end
