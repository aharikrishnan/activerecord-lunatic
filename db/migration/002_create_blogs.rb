class CreateBlogs < ActiveRecord::Migration
  
  def self.up
    create_table :blogs, :force => true do |t|
      t.integer :user_id
      t.string :title
      t.text :content
      t.timestamps
    end
  end
  
  def self.down
    drop_table :blogs
  end
end