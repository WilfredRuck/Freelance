class CreateStores < ActiveRecord::Migration[5.0]
  def change
    create_table :stores do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.string :number
      t.string :hours
      t.float :lat
      t.float :lng

      t.timestamps
    end
  end
end
