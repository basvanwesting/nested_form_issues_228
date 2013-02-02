class CreateFreeFormats < ActiveRecord::Migration
  def change
    create_table :free_formats do |t|
      t.string :type
      t.timestamps
    end
  end
end
