RsvpHub::Application.routes.draw do
  get "rsvps/create"

  get "rsvps/destroy"

  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users
  resources :courses

  post 'courses/:course_id/rsvp' => 'rsvps#create', as: 'rsvp_course'
  delete 'courses/:course_id/rsvp' => 'rsvps#destroy', as: 'rsvp_course'

end