class ServersController < ApplicationController
  get '/' do
    @servers= Server.all
    erb :'servers/index'
  end

  get '/new' do
    erb :'servers/new'
  end

  post '/' do
    server = Server.create(params[:server])
    @server=server
    redirect "/servers/#{server.id}/parties"
  end

  get '/:id/parties' do
    @server = Server.find(params[:id])
    erb :'parties/index'
  end

  get '/:id/edit' do
    @server = Server.find(params[:id])
    erb :'/servers/edit'
  end

  put '/:id' do
    server = Server.find(params[:id])
    server.update(params[:server])
    redirect "/servers/#{server.id}"
  end

  # DESTROY
  delete '/:id' do
    Server.delete(params[:id])
    redirect '/servers'
  end
end
