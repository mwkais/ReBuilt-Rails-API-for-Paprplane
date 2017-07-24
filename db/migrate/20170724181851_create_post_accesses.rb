class CreatePostAccesses < ActiveRecord::Migration[5.1]
  def change
    create_table :post_accesses do |t|
      t.references :user, foreign_key: true
      t.references :post, foreign_key: true
      t.integer :FriendID
      t.boolean :Viewed

      t.timestamps
    end
  end
end
