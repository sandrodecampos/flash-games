class RemoveCustomeridFromUser < ActiveRecord::Migration[6.0]
  def change

    remove_column :users, :customer_id, :integer
  end
end
