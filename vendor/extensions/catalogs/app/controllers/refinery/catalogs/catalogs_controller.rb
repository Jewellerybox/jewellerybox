module Refinery
  module Catalogs
    class CatalogsController < ::ApplicationController

      before_filter :find_all_catalogs
      before_filter :find_page

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @catalog in the line below:
        present(@page)
      end

      def show
        @catalog = Catalog.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @catalog in the line below:
        present(@page)
      end

    protected

      def find_all_catalogs
        @catalogs = Catalog.order('position ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/catalogs").first
      end

    end
  end
end
