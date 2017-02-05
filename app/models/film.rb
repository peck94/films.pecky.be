class Film < ApplicationRecord
  validate :rating_in_range

  def rating_in_range
    if rating.present? and (rating < 0 or rating > 5)
      errors.add(:rating, 'Je hebt een verkeerd aantal Jodensterren opgegeven.')
    end
  end

  def self.find_by_filter(params)
    if params[:gezien].to_i == 0
      return Film.where(rating: params[:rating])
    else
      return Film.where(rating: params[:rating], gezien: params[:gezien].to_i == 1)
    end
  end
end
