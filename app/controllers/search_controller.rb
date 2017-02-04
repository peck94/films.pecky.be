class SearchController < ApplicationController
  def index
    @query = params[:q]
    @results = Imdb::Search.new(@query)
    @start = 0
    @length = 10
  end
end
