Myapp::Application.routes.draw do
  resources :aliases

  resources :templates

  devise_for :users
  resources :cutes
  resources :thoughts

  root :to => "home#index"
  get "home/index"
  
  match 'incoming_mails' => 'incoming_mails#create', :via => [:post, :get], :as => "incoming_mails"
  
  # Development environment - sendmail testing methods
  match 'send_summary' => 'thoughts#send_summary'
  match 'send_reminder' => 'thoughts#send_reminder'
end
