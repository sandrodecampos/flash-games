ActiveAdmin.register Customer do
  permit_params :first_name, :last_name, :address1, :address2, :city, :province, :posta_code, :user_id
  # form do |f|
  #     f.inputs 'Customer' do
  #     f.input :user_id, as: :select, collection: User.all
  #   end
  #   f.actions
  # end
end
