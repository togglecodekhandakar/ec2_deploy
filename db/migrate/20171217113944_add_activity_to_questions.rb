class AddActivityToQuestions < ActiveRecord::Migration[5.1]
  def change
  	add_column :questions, :activity, :string
  end
end
