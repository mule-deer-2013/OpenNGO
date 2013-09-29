OpenNGO::Application.routes.draw do
  
  scope "(:locale)", :locale => /en|es/ do
    root to: 'orgs#index'
    resources :orgs, only:[:index,:show] do 
        get 'search', on: :collection
    end
  end 

end 

