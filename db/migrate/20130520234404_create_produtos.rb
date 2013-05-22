class CreateProdutos < ActiveRecord::Migration
  def change
    create_table :produtos do |t|
      t.string :name
      t.text :description
      t.string :status
      t.references :user
      t.references :category

      t.timestamps
    end
    add_index :produtos, :user_id
    add_index :produtos, :category_id
  end
end
