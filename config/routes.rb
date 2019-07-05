Rails.application.routes.draw do
  resources :roles
  resources :employees
  # hierarchy_path
  root :to => "employees#actions"
  match "/hierarchy" => "employees#hierarchy", via: :get
  match "/salary_ratio" => "employees#salary_ratio", via: :get
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
