Refinery::Core::Engine.routes.append do

  # Frontend routes
  namespace :catalogs do
    resources :catalogs, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :catalogs, :path => '' do
    namespace :admin, :path => 'refinery' do
      resources :catalogs, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
