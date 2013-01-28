class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.references :library

      t.timestamps
    end
    add_index :books, :library_id
  end
end
