Rails.application.routes.draw do
  root to: 'user#index'
  get 'user/team'
  get 'user/playerr'
  get 'user/see_player'
  get 'user/update_player'
  get 'user/playerr_profile'
  get 'user/team_profile'
  get 'search', to: "user#search"
  resources  :user 
  devise_for :users
  devise_for :team
  devise_for :playerr
  resources :users do
    collection do
      post :search  
    end
  end

  if Rails.env.development?
    scope format: true, constraints: { format: /jpg|png|gif|PNG/ } do
      get '/*anything', to: proc { [404, {}, ['']] }
    end
  end
  devise_scope :user do
    get '/playerr/sign_out' => 'devise/sessions#destroy'
  end
  devise_scope :user do
    get '/team/sign_out' => 'devise/sessions#destroy'
  end
end
