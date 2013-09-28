OpenNGO::Application.routes.draw do
  
  scope "(:locale)", :locale => /en|es/ do
    root to: 'orgs#index'
    resources :orgs, only: [:index,:show]
    match '/orgs/search/:id', to: 'orgs#search_result'  
  end 


end

