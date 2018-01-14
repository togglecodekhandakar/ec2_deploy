class AddActivityToCategories < ActiveRecord::Migration[5.1]
  def change
  	add_column :categories, :activity, :string
  end
end
