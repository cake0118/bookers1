Rails.application.routes.draw do
  # 初期ページの../にトップページを表示
  root :to => 'homes#top'
  # /booksというurlではbooksコントローラーのnewアクションを行う
  get 'books' => 'books#new'
  post 'books' => 'books#create'
  get 'books/index' => 'books#index'
  get 'books/:id' => 'books#show'
  get 'books/:id/edit' => 'books#edit'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
