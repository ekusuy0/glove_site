Rails.application.routes.draw do

  # 顧客用
  # URL /users/sign_in ...
  devise_for :users, skip: [:password], controllers: {
    registrations: "public/registrations",
    sessions: "public/sessions"
  }

  # 管理者用
  # URL /admin/sign_in ...
  devise_for :admin, skip: [:registrations, :password] ,controllers: {
    sessions: "admin/sessions"
  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'public/homes#top'


  scope module: :public do
    get 'about' => 'homes#about'

    resources :items, only: [:index, :show]

    get 'users/my_page' => 'users#show'
    get 'users/information/edit' => 'users#edit'
    patch 'users/information' => 'users#update'
    get 'users/out_check' => 'users#out_check'
    patch 'users/out' => 'users#out'

    resources :cart_items, except: [:edit, :show, :new] do
      collection do
        delete '/destroy_all' => 'cart_items#destroy_all'
      end
    end

    resources :orders, except: [:destroy, :edit, :update] do
      collection do
        post '/confirm' => 'orders#confirm'
        get '/complete' => 'orders#complete'
      end
    end

    resources :shipping_addresses, except: [:show, :new]

    resources :custom_items, only: [:new, :create, :show]
  end

  namespace :admin do

    get '/' => 'homes#top'

    resources :items, except: [:destroy]

    resources :genres, except: [:new, :show, :destroy]

    resources :users, except: [:new, :create, :destroy]

    resources :orders, only: [:show, :update]

    resources :ordered_items, only: [:update]

    get "/custom_item/content" => 'cart_items#content'

    resources :close_forms, only: [:create, :destroy]

    resources :colors, only: [:create, :destroy]

    resources :forms, only: [:create, :destroy]

    resources :glove_meshs, only: [:create, :destroy]

    resources :leathers, only: [:create, :destroy]
  end
end
