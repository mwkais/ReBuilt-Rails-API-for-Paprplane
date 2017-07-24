class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :Name
      t.string :UserName
      t.string :Email
      t.string :Password
      t.date :DateOfBirth

      t.timestamps
    end
  end
end
