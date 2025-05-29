Rails.application.routes.draw do
  get '/about', to: 'application#about'
  get '/about/author', to: 'application#author'
end
