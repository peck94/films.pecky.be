json.extract! film, :id, :titel, :synopsis, :gezien, :rating, :image, :imdb, :trailer, :created_at, :updated_at
json.url film_url(film, format: :json)