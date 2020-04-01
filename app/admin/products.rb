ActiveAdmin.register Product do
  permit_params :name, :description, :developer, :publisher, :release_date, :platform_id, :genre_id
end
