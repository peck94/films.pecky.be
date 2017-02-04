class Film < ApplicationRecord
  validate :rating_in_range

  def rating_in_range
    if rating.present? and (rating < 0 or rating > 5)
      errors.add(:rating, 'Je hebt een verkeerd aantal Jodensterren opgegeven.')
    end
  end
end
