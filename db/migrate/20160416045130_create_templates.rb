class CreateTemplates < ActiveRecord::Migration[5.0]
  def change
    create_table :templates do |t|
      t.integer :user_id
      t.string :name
      t.text :content

      t.timestamps
    end
  end
end
