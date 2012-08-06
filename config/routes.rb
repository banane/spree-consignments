Spree::Core::Engine.routes.draw do
  # Add your extension routes here
  resources :consignments, :member =>{:add => :get, :save => :put}
  resources :consignors, :member => {:consignments => :get}
end


