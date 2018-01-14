class AddSitenameToEmployee < ActiveRecord::Migration[5.1]
  def change
    add_column :employees, :site_name, :string
  end
end
