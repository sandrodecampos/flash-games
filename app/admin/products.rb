ActiveAdmin.register Product do
  permit_params :name, :description, :developer, :publisher, :release_date, :platform_id, :image,
                category_items_attributes: [:id, :genre_id, :product_id]

  index do
    selectable_column # Checkbox
    column :id
    column :image do |product| # include thumb image
      image_tag(product.image,width:100,height:50)
    end
    column :name
    # column :description
    # column :developer
    # column :publisher
    # column :release_date
    # column :platform_id
    column :genres do |product|
      product.genres.map { |p| p.name }.join(", ").html_safe
    end
    column :created_at
    column :updated_at
    actions # view, edit, delete
 end

  form do |f|
    f.semantic_errors
        f.inputs "Add/Edit Post" do
          f.input :name
          f.input :description
          f.input :developer
          f.input :publisher
          f.input :release_date
          # f.input :genres, as: :check_boxes
          f.has_many :category_items, allow_destroy: true do |n_f|
            n_f.input :genre
          end
          f.input :image, as: :file
        end
        f.actions

    end
  end
