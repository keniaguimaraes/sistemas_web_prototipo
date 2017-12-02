Rails.application.routes.draw do
  
  resources :nota
  root 'nota#index'
  resources :semestres
  root 'semestres#index'
  resources :disciplinas
  root 'disciplinas#index'
end
