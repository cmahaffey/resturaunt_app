class ServersController < ApplicationController
  get '/' do
    @Server= Server.all
    erb :'servers/index'
  end

  get '/new' do
    erb :'servers/new'
  end

  post '/' do
    server = Server.create(params[:server])
    redirect "/servers/#{ server.id }"
  end

  get '/:id' do
    @server = Server.find(params[:id])
    erb :'/servers/show'
  end

  get '/:id/edit' do
    @server = Server.find(params[:id])
    erb :'/servers/edit'
  end

  put '/:id' do
    server = Server.find(params[:id])
    Server.update(params[:server])
    redirect "/servers/#{server.id}"
  end

  # DESTROY
  delete '/:id' do
    Server.delete(params[:id])
    redirect '/servers'
end
