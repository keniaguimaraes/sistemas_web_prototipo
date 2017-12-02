Rails.application.routes.draw do
  
  devise_for :users
  resources :nota
  root 'nota#index'
  resources :semestres
  root 'semestres#index'
  resources :disciplinas
  root 'disciplinas#index'
end
