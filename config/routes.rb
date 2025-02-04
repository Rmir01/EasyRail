Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # homepage = root
  resources :home
  root to: redirect("/home")

  # ricerche recenti
  resources :searches, only: [ :create ]

  # ricerca treni (andata, andata/ritorno, pagamento, acquisto confermato)
  get "travels/search", to: "travels#search", as: "travels_search"
  get "travels/return", to: "travels#return", as: "travels_return"
  get "travels/payment", to: "travels#payment", as: "travels_payment"
  post "travels/confirmed_purchase", to: "travels#confirmed_purchase", as: "travels_confirmed_purchase"
  get "travels/confirm", to: "travels#confirm", as: "travels_confirm"


  # registrazione, login, logout
  devise_for :users, controllers: { omniauth_callbacks: "users/omniauth_callbacks" }

  # area personale, gestione biglietti
  get "/profile", to: "users#profile", as: "user_profile"
  get "/profile/edit", to: "users#edit", as: "edit_user_profile"
  patch "/profile", to: "users#update"
  delete "profile/destroy/:pnr", to: "tickets#destroy", as: "ticket_destroy"
  get "tickets/edit_time/:pnr/:hpar/:harr", to: "tickets#edit_time", as: "ticket_edit_time"
  patch "tickets/update_time", to: "tickets#update_time", as: "ticket_update_time"

  # dashboard admin
  namespace :admin do
    get "dashboard", to: "dashboard#index"
    resources :users, only: [ :index ]
    resources :tickets, only: [ :index ]
    resources :trains, only: [ :new, :create ]
    resources :travels, param: :cod, except: [ :update ] do
      collection do
        get :search # Per il form
        post :results # Per i risultati
      end
      member do
        get "edit_price/:cod/:part/:dest", to: "travels#edit_price", as: :edit_price
        patch "update_price/:cod/:part/:dest", to: "travels#update_price", as: :update_price
      end
    end
  end


  # stato treno
  get "train_status", to: "train_status#index", as: "train_status"
  get "train_status/show", to: "train_status#show", as: "train_status_show"

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"
end
