class WelcomeController < ApplicationController
  def index
  	@encuesta = Encuestum.all
  end
end