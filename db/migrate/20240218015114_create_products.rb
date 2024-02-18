class CreateProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :products do |t|
      t.string :index
      t.string :product_name
      t.text :product_desc
      t.decimal :amount
      t.integer :qty
      t.string :image_url

      t.timestamps
    end
  end
end
