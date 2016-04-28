Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  root 'articles#index'
  resources :articles
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  post 'contact_us', to: 'contacts#create'
end
