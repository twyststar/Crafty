class CreateProductsTable < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.column :user_id, :integer
      t.column :name, :string
      t.column :description, :string
      t.column :price, :string
    end
  end
end
