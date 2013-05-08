# This migration comes from refinery_catalogs (originally 1)
class CreateCatalogsCatalogs < ActiveRecord::Migration

  def up
    create_table :refinery_catalogs do |t|
      t.string :title
      t.text :description
      t.integer :image_id
      t.integer :item_id
      t.integer :price
      t.string :price_class
      t.integer :quantity
      t.string :warranty
      t.string :guarantee
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-catalogs"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/catalogs/catalogs"})
    end

    drop_table :refinery_catalogs

  end

end
