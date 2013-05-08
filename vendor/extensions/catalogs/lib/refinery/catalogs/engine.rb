module Refinery
  module Catalogs
    class Engine < Rails::Engine
      include Refinery::Engine
      isolate_namespace Refinery::Catalogs

      engine_name :refinery_catalogs

      initializer "register refinerycms_catalogs plugin" do
        Refinery::Plugin.register do |plugin|
          plugin.name = "catalogs"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.catalogs_admin_catalogs_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/catalogs/catalog'
          }
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Catalogs)
      end
    end
  end
end
