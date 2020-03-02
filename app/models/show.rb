class Show < ActiveRecord::Base

  def highest_rating
    Show.maximum(:rating)
  end

  def most_popular_show
    Show.find_by(highest_rating)
  end

end
