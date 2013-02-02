class AddFreeFormatReference < ActiveRecord::Migration
  def change
    [:libraries, :books, :chapters].each do |table_name|
      add_column table_name, :free_format_id, :integer
      add_column table_name, :free_format_type, :string
    end
  end
end
