ActionController::Routing::Routes.draw do |map|

	map.with_options :controller => "home" do |home|
		home.clientes "clientes", :action => "clientes"
	end
 
  map.resources :products, :admin, :home, :contacts, :factories

  map.root :controller => "home"
  
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'

end
