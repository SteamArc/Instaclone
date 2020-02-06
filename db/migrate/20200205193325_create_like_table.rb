class CreateLikeTable < ActiveRecord::Migration[6.0]
  def change
    create_table :like_tables do |t|
      t.integer :post_id
      t.integer :user_id
      
    end
  end
end
