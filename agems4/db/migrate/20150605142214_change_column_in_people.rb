class ChangeColumnInPeople < ActiveRecord::Migration
  def change
  	change_column :people, :array_data, :text
  end
end
