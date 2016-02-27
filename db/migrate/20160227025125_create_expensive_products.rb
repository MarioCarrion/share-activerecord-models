class CreateExpensiveProducts < ActiveRecord::Migration
  def change
    create_view :expensive_products, materialized: true

    add_index :expensive_products, :id
  end
end
