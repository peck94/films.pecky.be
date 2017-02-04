class SearchController < ApplicationController
  def index
    @query = params[:q]
    @results = Imdb::Search.new(@query)
    @start = params.has_key?(:start) ? params[:start] : 0
    @length = 10
  end
end
