class CreateBlogs < ActiveRecord::Migration[5.2]
  def change
    create_table :blogs do |t|
      t.string :title
      t.string :content
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
