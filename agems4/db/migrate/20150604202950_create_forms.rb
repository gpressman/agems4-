class CreateForms < ActiveRecord::Migration
  def change
    create_table :forms do |t|
      t.string :label
      t.string :field_type
      t.integer :order
      t.string :information_type

      t.timestamps null: false
    end
  end
end
