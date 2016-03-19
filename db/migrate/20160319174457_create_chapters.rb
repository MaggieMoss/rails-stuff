class CreateChapters < ActiveRecord::Migration
  def change
    create_table :chapters do |t|
    	t.string :title
    	t.text :content
    	t.string :description
    	t.integer :story_id
      t.timestamps null: false
    end
  end
end
