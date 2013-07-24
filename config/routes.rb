CourseTracker::Application.routes.draw do

  devise_for :users

  get 'dashboard' => 'home#dashboard', :as => :dashboard

  shallow do
    resources :projects do
      resources :tasks do
        resources :action_items, :path => :actions, :as => :actions
        resources :action_items
      end
    end
  end
  #resources :tasks
  #resources :action_items, :path => :actions, :as => :actions

  root 'home#index'

  # You can have the root of your site routed with "root"
  # root 'welcome#index'
  #
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
end
