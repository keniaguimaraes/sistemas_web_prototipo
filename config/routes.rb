Rails.application.routes.draw do
  
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  resources :notadeaula
  root 'notadeaula#index'
  resources :semestres
  root 'semestres#index'
  resources :disciplinas
  root 'disciplinas#index'
end
