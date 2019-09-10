class AddNameToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :age, :integer
    add_column :users, :skills, :text
    add_column :users, :quarter, :string
    add_column :users, :gender, :string
    add_column :users, :pseudonym, :string
  end
end
