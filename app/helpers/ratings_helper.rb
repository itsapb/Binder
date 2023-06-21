module RatingsHelper
  def star_rating(rating)
    full_star = "<i class='fa-sharp fa-solid fa-star' style='color: #e9e201;'></i>"

    full_stars = rating.floor
    stars = (full_star * full_stars)

    "<span class='star-rating'>#{stars}</span>".html_safe
  end
end
