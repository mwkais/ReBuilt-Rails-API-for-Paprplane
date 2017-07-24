class CreateUserFriends < ActiveRecord::Migration[5.1]
  def change
    create_table :user_friends do |t|
      t.references :user, foreign_key: true
      t.references :Friend, foreign_key: true
      t.boolean :Pending

      t.timestamps
    end
  end
end
