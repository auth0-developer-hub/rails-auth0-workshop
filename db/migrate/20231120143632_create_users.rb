class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :nickname
      t.string :name
      t.string :picture
      t.string :email
      t.boolean :email_verified
      t.string :sub
      t.string :role

      t.timestamps
    end
  end
end
