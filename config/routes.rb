Rails.application.routes.draw do
  # 初期ページの../にトップページを表示
  root :to => 'homes#top'
  # /booksというurlではbooksコントローラーのnewアクションを行う
  post 'books/index' => 'books#create'
  get 'books/index' => 'books#index'
  get 'books/index' => 'books#new'
  get 'books/:id' => 'books#show', as: 'book'
  get 'books/:id/edit' => 'books#edit', as: 'edit_book'
  patch 'books/:id' => 'books#update', as: 'update_book'
  delete 'books/:id' => 'books#destroy', as: 'destroy_book'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
