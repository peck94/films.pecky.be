class SearchController < ApplicationController
  def index
    @query = params[:q]
    @results = Imdb::Search.new(@query)
  end
end
