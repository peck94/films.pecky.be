class MainController < ApplicationController
  def index
    @films = Film.all
  end
end
