class WelcomeController < ApplicationController
  get '/' do
    redirect '/servers'
  end
end
