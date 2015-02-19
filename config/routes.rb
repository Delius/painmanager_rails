Rails.application.routes.draw do
  get 'static_pages/home'

  get 'static_pages/help'

  get 'static_pages/about'

  get 'static_pages/contact'

  resources :pain_durations

  resources :other_symptoms

  resources :mental_states

  resources :effective_treatments

  resources :activity_levels

  resources :pain_descriptions

  resources :pain_intensity_levels

  resources :pain_triggers

  resources :diaries

  resources :pain_onset_trackers

  resources :user_conditions

  resources :user_moods

  resources :pain_records

  devise_for :users, controllers: { sessions: "users/sessions" }
  resources :users
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'static_pages#home'


end
