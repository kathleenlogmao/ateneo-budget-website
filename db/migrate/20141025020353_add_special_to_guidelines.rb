class AddSpecialToGuidelines < ActiveRecord::Migration
  def change
    add_column :guidelines, :special, :boolean
  end
end
