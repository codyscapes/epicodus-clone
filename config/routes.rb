Epicodus::Application.routes.draw do
  match('/', {:via => :get, :to => 'lesson#index'})
  match('lessons/', {:via => :get, :to => 'lesson#index'})
  match('lessons/new', {:via => :get, :to => 'lesson#new'})
  match('lessons/new', {:via => :post, :to => 'lesson#create'})
  match('lessons/:number', {:via => :get, :to => 'lesson#show'})
  match('lessons/:number/edit', {:via => :get, :to => 'lesson#edit'})
  match('lessons/:number', {:via => [:patch, :put], :to => 'lesson#update'})
  match('lessons/:number', {:via => :delete, :to => 'lesson#destroy'})
end
