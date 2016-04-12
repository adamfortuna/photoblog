class CreatePages < ActiveRecord::Migration[5.0]
  def change
    create_table :pages do |t|
      t.timestamps
      t.string :permalink, null: false
      t.string :title, null: false
      t.integer :template_id, null: false
      t.integer :photos_count, null: false, default: 0
      t.integer :videos_count, null: false, default: 0
      t.text :content, null: false
      t.integer :parent_id
      t.integer :order
      t.text :header_photo
      t.boolean :allow_comments
      t.string :disqus_identifier
      t.integer :blog_id
      t.string :type
      t.text :cached_content
      t.datetime :published_at
      t.text :short_description
    end

    add_index :pages, :permalink
    add_index :pages, :template_id
    add_index :pages, :parent_id
    add_index :pages, :blog_id
  end
end
