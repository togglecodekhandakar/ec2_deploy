Rails.application.routes.draw do
  
  

 
  get 'greetings/hello'
  get 'greetings/get_quizzes'
  #get 'greetings/get_permit_numbers'
  post 'greetings/save_permit'

  #post 'greetings/update_permit'


  resources :employees
  resources :permitdetails
  resources :permits 
  


  resources :commonquestions
  resources :questiontypes
  resources :parttypes
  resources :part_ttypes
  resources :questions
  resources :categories
  resources :sites
  devise_for :users


  root 'permits#index'





  #namespace :api do
  #  namespace :v1 do
      resources :emplogins
  #  end
 # end

end
