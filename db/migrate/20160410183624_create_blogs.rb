class CreateBlogs < ActiveRecord::Migration[5.0]
  def change
    create_table :blogs do |t|
      t.timestamps
      t.integer :user_id
      t.integer :posts_count, default: 0, null: false
      t.string :name
      t.text :about
    end

    add_index :blogs, :user_id
  end
end
