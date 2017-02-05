class MainController < ApplicationController
  def index
    if params.has_key?(:commit)
      @films = Film.find_by_filter(params)

      @gezien = params[:gezien]
      @rating = params[:rating]
    else
      @films = Film.all
    end
  end

  def about
  end
end
