class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.string :author
      t.text :content
      t.references :post, foreign_key: true

      t.timestamps :updated_at
    end
  end
end
