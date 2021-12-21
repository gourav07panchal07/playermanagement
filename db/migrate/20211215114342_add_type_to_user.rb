class AddTypeToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :type, :string
    add_column :users, :name, :string
    add_column :users, :mobile, :integer
  end
end
