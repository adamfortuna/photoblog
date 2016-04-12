class AddIdentiferToBlogs < ActiveRecord::Migration[5.0]
  def change
    add_column :blogs, :identifier, :string

    execute('UPDATE blogs SET identifier=slug')
    change_column :blogs, :identifier, :string, null: false
  end
end
