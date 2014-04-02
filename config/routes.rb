Epicodus::Application.routes.draw do
  match('/', {:via => :get, :to => 'lesson#index'})
  match('lessons/', {:via => :get, :to => 'lesson#index'})
  match('lessons/new', {:via => :get, :to => 'lesson#new'})
  match('lessons/new', {:via => :post, :to => 'lesson#create'})
  match('lessons/:id', {:via => :get, :to => 'lesson#show'})
  match('lessons/:id/edit', {:via => :get, :to => 'lesson#edit'})
  match('lessons/:id', {:via => [:patch, :put], :to => 'lesson#update'})
  match('lessons/:id', {:via => :delete, :to => 'lesson#destroy'})
end
