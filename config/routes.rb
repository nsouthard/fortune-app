Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/oracle' => 'pages#fortune'
  get '/randnum' => 'pages#numgenerator'
  get '/count' => 'pages#counter'
end
