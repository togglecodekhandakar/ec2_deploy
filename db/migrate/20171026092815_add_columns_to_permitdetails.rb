class AddColumnsToPermitdetails < ActiveRecord::Migration[5.1]
  def change
    add_column :permitdetails, :reply_date, :string
    add_column :permitdetails, :reply_time, :string
  end
end
