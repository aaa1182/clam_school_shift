Rails.application.routes.draw do
  devise_scope :teacher do
    root 'teachers/sessions#new'
  end
  devise_for :teachers, controllers: {
    sessions: 'teachers/sessions',
    passwords: 'teachers/passwords',
    registrations: 'teachers/registrations'
  }
  devise_for :admins, controllers: {
    sessions: 'admins/sessions',
    passwords: 'admins/passwords',
    registrations: 'admins/registrations'
  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
