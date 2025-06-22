Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do
    get "/users/sign_out", to: "devise/sessions#destroy"

    unauthenticated do
      root to: "devise/sessions#new", as: :unauthenticated_root
    end
  end

  # Authenticated dashboard routing
  authenticated :user, ->(u) { u.role == "receptionist" } do
    get "/dashboard", to: "receptionist_dashboard#index", as: :receptionist_root
  end

  authenticated :user, ->(u) { u.role == "doctor" } do
    get "/dashboard", to: "doctor_dashboard#index", as: :doctor_root
  end

  authenticated :user do
    get "/dashboard", to: "patients#index", as: :authenticated_root
  end

  # Manual access if needed
  get "receptionist_dashboard/index"
  get "doctor_dashboard/index"

  # 403 fallback
  get "/unauthorized", to: proc { [403, {}, ["<h1>403 Forbidden</h1><p>You do not have access.</p>"]] }

  # Patients routes
  resources :patients

  # Global fallback
  root to: redirect('/dashboard')
end