class CreateCategoryItems < ActiveRecord::Migration[6.0]
  def change
    create_table :category_items do |t|
      t.references :genre, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
