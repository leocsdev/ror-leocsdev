class CreateBlogPosts < ActiveRecord::Migration[7.0]
  def change
    create_table :blog_posts do |t|
      t.string :title
      t.string :image
      t.string :description
      t.text :body
      t.boolean :published, default: false

      t.timestamps
    end
  end
end
