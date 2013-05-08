module Refinery
  module Catalogs
    class Catalog < Refinery::Core::BaseModel
      self.table_name = 'refinery_catalogs'

      attr_accessible :title, :description, :image_id, :item_id, :price, :price_class, :quantity, :warranty, :guarantee, :position

      acts_as_indexed :fields => [:title, :description, :price_class, :warranty, :guarantee]

      validates :title, :presence => true, :uniqueness => true

      belongs_to :image, :class_name => '::Refinery::Image'
    end
  end
end
