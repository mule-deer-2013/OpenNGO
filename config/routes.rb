OpenNGO::Application.routes.draw do
  
  scope "(:locale)", :locale => /en|es/ do
  	devise_for :users, :controllers => { :registrations => "registrations" }
    root to: 'orgs#index'
    resources :orgs, only:[:index,:show, :new, :create] do 
        get 'search', on: :collection
    end
  end 

end 

