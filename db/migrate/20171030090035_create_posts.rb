class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :title, null: false
      t.text :body, null: false
      t.references :user, foreign_key: true, null: false
      t.boolean :active, null: false, default: true
      t.timestamps
    end
    add_index :posts, :title, unique: true
  end
end
