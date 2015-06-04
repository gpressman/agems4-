class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :array_data
      t.string :status
      t.integer :order

      t.timestamps null: false
    end
  end
end
