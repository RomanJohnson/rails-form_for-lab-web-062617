Rails.application.routes.draw do
  resources :school_classes
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
  #students
  get '/students/new', to: 'students#new', as: 'new_student'
  get '/students/:id', to: 'students#show', as: 'student'
  get '/students', to: 'students#index'
  get 'students/:id/edit', to: "students#edit", as: 'edit_student'
  post '/students/', to: 'students#create'
  patch '/students/:id/', to: 'students#update'
  delete '/students/:id', to: 'students#index'
  #school_classes
  get '/school_classes/:id', to: 'school_classes#show'
  get '/school_classes', to: 'school_classes#index'
  get 'school_classes/:id/edit', to: "school_classes#edit"
  get '/school_classes/new', to: 'school_classes#new'
  post '/school_classes/', to: 'school_classes#create'
  patch '/school_classes/:id/', to: 'school_classes#update'
  delete '/school_classes/:id', to: 'school_classes#index'
end
