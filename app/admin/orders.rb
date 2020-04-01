ActiveAdmin.register Order do
  permit_params :subtotal, :total, :customer_id
end
