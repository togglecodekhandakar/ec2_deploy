class AddColumnsToQuestion < ActiveRecord::Migration[5.1]
  def change
    add_column :questions, :category_text, :string
    add_column :questions, :parttype_text, :string
    add_column :questions, :questiontype_text, :string
  end
end
