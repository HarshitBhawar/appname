class CreateYusers < ActiveRecord::Migration[7.0]
  def change
    create_table :yusers do |t|
      t.string :name
      t.string :username
      t.string :password
      t.string :email
      t.integer :phone

      t.timestamps
    end
  end
end
