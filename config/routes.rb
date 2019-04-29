Rails.application.routes.draw do
  root 'home#gossip_array'
  get '/welcome/:first_name', to: 'welcome#message'
  get '/contact', to: 'contact#contact'
  get '/team', to: 'team#team'
  get '/gossip/:id', to: 'gossip#gossip_display', as: 'gossip_display'
  get '/user/:id', to: 'user#user_display', as: 'user_display'
  # get '/static_pages/contact', to: 'static_pages#contact'
end
