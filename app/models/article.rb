class Article < ApplicationRecord
  belongs_to :user

  def author
    user
  end

  def body_to_html
    Kramdown::Document.new(body).to_html.html_safe
  end

  def created_at_formatted
    created_at.strftime("%B #{created_at.day.ordinalize}")
  end
end
