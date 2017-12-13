Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount RailsAdmin::Engine => '/', as: 'rails_admin'
  


end
