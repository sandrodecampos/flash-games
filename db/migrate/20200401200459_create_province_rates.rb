class CreateProvinceRates < ActiveRecord::Migration[6.0]
  def change
    create_table :province_rates do |t|
      t.references :province, null: false, foreign_key: true
      t.references :rate, null: false, foreign_key: true
      t.decimal :amount

      t.timestamps
    end
  end
end
