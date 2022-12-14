class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.integer :author_id
      t.string :title
      t.string :image_url
      t.text :content
      t.string :category
      t.timestamps
    end
  end
end
