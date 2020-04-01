class AddCustomerIdToOrders < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :customer_id, :integer
    add_index  :orders, :customer_id
  end
end
