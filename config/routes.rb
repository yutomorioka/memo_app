Rails.application.routes.draw do
  
  root :to =>"memos#index"
  get 'memos/show'
  get 'memos/edit'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
