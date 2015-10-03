Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: "users/omniauth_callbacks" }
  # devise_scope :user do
  #   delete 'sign_out', to: 'devise/sessions#destroy', as: :destroy_user_session
  # end
  resources :books
  root 'books#index'

  # TheComments routes
  concern   :user_comments,  TheComments::UserRoutes.new
  concern   :admin_comments, TheComments::AdminRoutes.new
  resources :comments, concerns:  [:user_comments, :admin_comments]
end
