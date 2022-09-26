class CreateComments < ActiveRecord::Migration[7.0]
  def change
    # create_table :articles do |t|
    #   t.string :title
    #   t.text :body

    #   t.timestamps
    # end
    create_table :comments do |t|
      t.string :commenter
      t.text :body
      # t.references :article, null: false, foreign_key: true
      t.belongs_to :article  
      t.timestamps
    end
  end
end
