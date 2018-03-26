Rails.application.routes.draw do
  # session相关
  get '/login',to: 'sessions#new'
  post '/login',to: 'sessions#create'
  delete '/logout',to: 'sessions#destroy'

  # 创建用户
  get '/signup',to: 'users#new'

  root 'static_pages#home'

  get '/home',to: 'static_pages#home'
  get '/help',to: 'static_pages#help'
  get '/about',to: 'static_pages#about'
  get '/contact',to: 'static_pages#contact'

  resources :users
end
