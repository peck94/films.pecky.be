class MainController < ApplicationController
  def index
    @films = Film.all
  end

  def about
  end
end
