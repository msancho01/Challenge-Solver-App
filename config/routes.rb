Rails.application.routes.draw do
  root 'challenges#index'

  # Routes for specific challenges
  get 'boxes_and_balls', to: 'challenges#boxes_and_balls'
end
