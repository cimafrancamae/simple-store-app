class RemoveIndexFromProducts < ActiveRecord::Migration[7.1]
  def change
    remove_column :products, :index, :string
  end
end
