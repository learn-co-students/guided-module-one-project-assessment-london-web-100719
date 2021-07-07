class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer :users_id
      t.integer :hotels_id
      t.string :name  
      t.string :content
    end 
  end
end
