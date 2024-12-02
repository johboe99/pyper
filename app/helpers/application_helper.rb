module ApplicationHelper

  def star_rating(rating, out_of = 5)
    full_star = '★'
    empty_star = '☆'

    if rating > 0
      full_stars = full_star * rating
      empty_stars = empty_star * (out_of - rating)
      content_tag(:span, full_stars + empty_stars, class: 'star-rating')
    else
      content_tag(:span, "No review", class: 'star-rating')
    end
  end
end
