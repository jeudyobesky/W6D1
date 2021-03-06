class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.belongs_to :author, index: :true
      t.timestamps
    end
  end
end
