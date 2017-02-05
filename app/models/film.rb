class Film < ApplicationRecord
  validate :rating_in_range

  def rating_in_range
    if rating.present? and (rating < 0 or rating > 5)
      errors.add(:rating, 'Je hebt een verkeerd aantal Jodensterren opgegeven.')
    end
  end

  def self.find_by_filter(params)
    @gezien = params[:gezien].to_i
    @rating = params[:rating].to_i

    if @gezien == 0
      if @rating < 0
        return Film.all
      else
        return Film.where(rating: params[:rating])
      end
    else
      if @rating < 0
        return Film.where(gezien: params[:gezien].to_i == 1)
      else
        return Film.where(rating: params[:rating], gezien: params[:gezien].to_i == 1)
      end
    end
  end

  def self.convert_rating(imdb_rating)
    return [0, ((imdb_rating - 1)/9 * 5).round].max
  end
end
