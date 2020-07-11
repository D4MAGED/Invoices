class WelcomeController < ApplicationController
  def show
    @clients = Client.all
  end
end
