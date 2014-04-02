Epicodus::Application.routes.draw do
  match('lessons/', {:via => :get, :to => 'lesson#index'})
  match('lessons/new', {:via => :get, :to => 'lesson#new'})
  match('lessons/new', {:via => :post, :to => 'lesson#create'})
  match('lessons/:number', {:via => :get, :to => 'lesson#show'})
  match('lessons/:number/edit', {:via => :get, :to => 'lesson#edit'})
  match('lessons/:number', {:via => [:patch, :put], :to => 'lesson#update'})
  match('lessons/:number', {:via => :delete, :to => 'lesson#destroy'})

  match('/', {:via => :get, :to => 'section#index'})
  match('sections/', {:via => :get, :to => 'section#index'})
  match('sections/new', {:via => :get, :to => 'section#new'})
  match('sections/new', {:via => :post, :to => 'section#create'})
  match('sections/:name', {:via => :get, :to => 'section#show'})
  match('sections/:id', {:via => :get, :to => 'section#show'})
  match('sections/:id/edit', {:via => :get, :to => 'section#edit'})
  match('sections/:id', {:via => [:patch, :put], :to => 'section#update'})
  match('sections/:id', {:via => :delete, :to => 'section#destroy'})
end
