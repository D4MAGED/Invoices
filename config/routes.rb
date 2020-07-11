Rails.application.routes.draw do

  get 'invoices', to: 'invoice_list#index'
  root to: "welcome#show"

  resources :invoice, only: [:show]
  resource :welcome, only: [:show]
end

