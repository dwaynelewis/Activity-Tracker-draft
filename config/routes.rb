Rails.application.routes.draw do
  resources :young_americanas
  resources :yas_tasks
  resources :dada_tasks
  resources :sex_eds
  resources :girls
  resources :entries
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root 'entries#dashboard'
end
