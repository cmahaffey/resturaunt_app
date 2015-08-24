class OrdersController < ApplicationController
  get '/' do
    @order= Order.all
    erb :'orders/index'
  end

  get '/new' do
    erb :'orders/new'
  end

  post '/' do
    order = Order.create(params[:order])
    redirect "/orders/#{ orders.id }"
  end

  get '/:id' do
    @order = Order.find(params[:id])
    erb :'/orders/show'
  end

  get '/:id/edit' do
    @order = Order.find(params[:id])
    erb :'/orders/edit'
  end

  put '/:id' do
    order = Order.find(params[:id])
    Order.update(params[:order])
    redirect "/orders/#{order.id}"
  end

  # DESTROY
  delete '/:id' do
    Order.delete(params[:id])
    redirect '/orders'
end
