module Refinery
  module Catalogs
    module Admin
      class CatalogsController < ::Refinery::AdminController

        crudify :'refinery/catalogs/catalog', :xhr_paging => true

      end
    end
  end
end
