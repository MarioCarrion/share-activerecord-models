class ChangeProductsName < ActiveRecord::Migration
  def up
    drop_view :expensive_products, materialized: true

    change_column :products, :name, :text

    create_view :expensive_products, materialized: true

    # If we had more versions for this materialized we would use the latest
    # generated instruction, something like:
    #
    # update_view :expensive_products, version: 2, revert_to_version: 1, materialized: true

    add_index :expensive_products, :id, unique: true
  end

  def down
    drop_view :expensive_products, materialized: true

    change_column :products, :name, :string

    create_view :expensive_products, materialized: true

    # Similar to "#up" we would do the same:
    #
    # update_view :expensive_products, version: 2, revert_to_version: 1, materialized: true

    add_index :expensive_products, :id, unique: true
  end
end
