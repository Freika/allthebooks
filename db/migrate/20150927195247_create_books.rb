class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :publisher
      t.string :year
      t.string :link
      t.text :description
      t.string :slug

      t.timestamps null: false
    end
    add_index :books, :slug, unique: true
  end
end
