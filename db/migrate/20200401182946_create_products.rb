class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.string :developer
      t.string :publisher
      t.string :release_date

      t.timestamps
    end
  end
end
