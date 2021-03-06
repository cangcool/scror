Rails.application.routes.draw do

  resources :demo_users

  resources :sign_up_users

  resources :sprint_activity_types

  resources :sprint_activities

  resources :user_projects

  resources :user_roles

  resources :users

  resources :sprint_chart_records

  resources :charts

  resources :task_position_people

  resources :task_positions

  resources :board_column_types

  resources :sprint_board_columns

  resources :default_board_columns

  resources :sprint_task_types

  resources :default_task_types

  resources :tasks

  resources :product_backlogs

  resources :sprint_states

  resources :sprints

  resources :countries

  resources :companies

  resources :project_types

  resources :projects

  resources :sessions
  
  get 'home' => 'pages#home'

  get 'about' => 'pages#about'

  get 'contact' => 'pages#contact'

  get 'taskboard' => 'sprints#taskboard'
  
  get 'sessions/new'

  get 'log_out' => 'sessions#destroy'
  
  get 'log_in' => 'sessions#new'
  
  get 'sign_up' => 'sign_up_users#new'
  
  get 'demo' => 'demo_users#new'
  
  root 'pages#home'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
