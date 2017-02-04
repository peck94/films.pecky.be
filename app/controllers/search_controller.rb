class SearchController < ApplicationController
  def index
    @query = params[:q]
    @results = Imdb::Search.new(@query)
    @start = params.has_key?(:start) ? params[:start].to_i : 0
    @length = 10
  end
end
