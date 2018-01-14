class AddCategorysnameToQuestion < ActiveRecord::Migration[5.1]
  def change
    add_column :questions, :category_s_name, :string
  end
end
