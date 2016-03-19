class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
    	t.integer :user_id
    	t.string :description
    	t.string :title
    	t.string :cover_link
      t.timestamps null: false
    end
  end
end
