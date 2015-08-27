class FoodsController < ApplicationController

  get '/' do
    @foods= Food.all
    erb :'foods/index'
  end

  get '/new' do
    erb :'foods/new'
  end

  post '/' do
    food = Food.create(params[:food])
    redirect "/foods/#{ food.id }"
  end

  get '/:id' do
    @food = Food.find(params[:id])
    erb :'/foods/show'
  end

  get '/:id/edit' do
    @food = Food.find(params[:id])
    erb :'/foods/edit'
  end

  put '/:id' do
    
    food = Food.find(params[:id])
    food.update(params[:food])
    redirect "/foods/#{food.id}"
  end

  # DESTROY
  delete '/:id' do
    Food.delete(params[:id])
    redirect '/foods'
  end
end
