Rails.application.routes.draw do
  get 'posts' => 'blog#index', as: 'posts'
  get 'posts/new' => 'blog#new', as: 'new_post'
  post 'posts' => 'blog#create'
  get 'posts/:id' => 'blog#show', as: 'post'
end
