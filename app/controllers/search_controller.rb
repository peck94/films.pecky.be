class SearchController < ApplicationController
  @@results_cache = []
  @@query = nil

  def index
    if @@query.nil? or @@query != params[:q]
      @query = params[:q]
      @results = Imdb::Search.new(@query).movies

      @@query = @query.dup

      @@results_cache.clear
      @results.each{|movie| @@results_cache << movie.dup}
    else
      @query = @@query
      @results = @@results_cache
    end

    @start = params.has_key?(:start) ? params[:start].to_i : 0
    @length = 10
  end
end
