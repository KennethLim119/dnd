class AddContactnumberToUsers < ActiveRecord::Migration
  def change
    add_column :users, :contactnumber, :integer
  end
end
