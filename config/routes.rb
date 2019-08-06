Rails.application.routes.draw do

  root "home#index"
  get 'welcome/:first_name', to: "hidden#index" #PAGE WELCOME
  get '/contact/', to: "contact#index" #PAGE CONTACT
  get '/team/', to: "team#index" #PAGE TEAM
  get 'gossip/:id', to: "eachgossip#index", as: 'eachgossip' #PAGE UNIQUE PAR GOSSIP
end
