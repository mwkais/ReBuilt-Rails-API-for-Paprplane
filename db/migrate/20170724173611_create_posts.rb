class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.integer :Type
      t.text :Caption
      t.text :Content
      t.integer :Counter
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
