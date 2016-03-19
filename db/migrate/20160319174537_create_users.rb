class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.string :email
    	t.string :password
    	t.text :bio
    	t.string :avatar
    	t.boolean :active
      t.timestamps null: false
    end
  end
end
