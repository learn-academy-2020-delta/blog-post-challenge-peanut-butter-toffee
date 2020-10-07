Rails.application.routes.draw do
  get 'posts' => 'blog#index', as: 'posts'
  get 'posts/new' => 'blog#new', as: 'new_post'
  post 'posts' => 'blog#create'
  get 'posts/:id' => 'blog#show', as: 'post'
  get 'posts/:id/edit' => 'post#edit', as: 'edit_post'
  patch 'posts/:id' => 'post#update' 
end
