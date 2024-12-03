module ApplicationHelper

  def star_rating(rating, out_of = 5)
    full_star = '★'
    empty_star = '☆'

    if rating > 0
      rounded_rating = rating.round(1)
      full_stars_count = rounded_rating.floor
      additional_star = (rounded_rating - full_stars_count) >= 0.5 ? 1 : 0
      empty_stars_count = out_of - full_stars_count - additional_star

      full_stars = full_star * (full_stars_count + additional_star.to_i)
      empty_stars = empty_star * empty_stars_count.to_i
      content_tag(:span, full_stars + empty_stars, class: 'star-rating')
    else
      content_tag(:span, "No review", class: 'star-rating')
    end
  end
end
