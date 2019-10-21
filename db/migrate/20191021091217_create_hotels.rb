class CreateHotels < ActiveRecord::Migration[5.2]
  def change
    create_table :hotels do |t|
      t.string :name
      t.string :email
      t.string :location
      t.integer :phone_number
    end
  end
end
