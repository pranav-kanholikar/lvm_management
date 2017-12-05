# == Route Map
#
#                        Prefix Verb   URI Pattern                                                               Controller#Action
#              new_user_session GET    /users/sign_in(.:format)                                                  devise/sessions#new
#                  user_session POST   /users/sign_in(.:format)                                                  devise/sessions#create
#          destroy_user_session DELETE /users/sign_out(.:format)                                                 devise/sessions#destroy
#             new_user_password GET    /users/password/new(.:format)                                             devise/passwords#new
#            edit_user_password GET    /users/password/edit(.:format)                                            devise/passwords#edit
#                 user_password PATCH  /users/password(.:format)                                                 devise/passwords#update
#                               PUT    /users/password(.:format)                                                 devise/passwords#update
#                               POST   /users/password(.:format)                                                 devise/passwords#create
#      cancel_user_registration GET    /users/cancel(.:format)                                                   registrations#cancel
#         new_user_registration GET    /users/sign_up(.:format)                                                  registrations#new
#        edit_user_registration GET    /users/edit(.:format)                                                     registrations#edit
#             user_registration PATCH  /users(.:format)                                                          registrations#update
#                               PUT    /users(.:format)                                                          registrations#update
#                               DELETE /users(.:format)                                                          registrations#destroy
#                               POST   /users(.:format)                                                          registrations#create
#     employer_employee_leavees GET    /employers/:employer_id/employees/:employee_id/leavees(.:format)          leavees#index
#                               POST   /employers/:employer_id/employees/:employee_id/leavees(.:format)          leavees#create
#  new_employer_employee_leavee GET    /employers/:employer_id/employees/:employee_id/leavees/new(.:format)      leavees#new
# edit_employer_employee_leavee GET    /employers/:employer_id/employees/:employee_id/leavees/:id/edit(.:format) leavees#edit
#      employer_employee_leavee GET    /employers/:employer_id/employees/:employee_id/leavees/:id(.:format)      leavees#show
#                               PATCH  /employers/:employer_id/employees/:employee_id/leavees/:id(.:format)      leavees#update
#                               PUT    /employers/:employer_id/employees/:employee_id/leavees/:id(.:format)      leavees#update
#                               DELETE /employers/:employer_id/employees/:employee_id/leavees/:id(.:format)      leavees#destroy
#            employer_employees GET    /employers/:employer_id/employees(.:format)                               employees#index
#                               POST   /employers/:employer_id/employees(.:format)                               employees#create
#         new_employer_employee GET    /employers/:employer_id/employees/new(.:format)                           employees#new
#        edit_employer_employee GET    /employers/:employer_id/employees/:id/edit(.:format)                      employees#edit
#             employer_employee GET    /employers/:employer_id/employees/:id(.:format)                           employees#show
#                               PATCH  /employers/:employer_id/employees/:id(.:format)                           employees#update
#                               PUT    /employers/:employer_id/employees/:id(.:format)                           employees#update
#                               DELETE /employers/:employer_id/employees/:id(.:format)                           employees#destroy
#                     employers GET    /employers(.:format)                                                      employers#index
#                               POST   /employers(.:format)                                                      employers#create
#                  new_employer GET    /employers/new(.:format)                                                  employers#new
#                 edit_employer GET    /employers/:id/edit(.:format)                                             employers#edit
#                      employer GET    /employers/:id(.:format)                                                  employers#show
#                               PATCH  /employers/:id(.:format)                                                  employers#update
#                               PUT    /employers/:id(.:format)                                                  employers#update
#                               DELETE /employers/:id(.:format)                                                  employers#destroy
#                          root GET    /                                                                         employers#index
# 

Rails.application.routes.draw do
  
  
  devise_for :users, :controllers => { registrations: 'registrations' } 
  resources :employers do
  resources :employees do
    resources :leavees
    end
  end

  root "employers#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
