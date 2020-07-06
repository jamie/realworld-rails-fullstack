class Article < ApplicationRecord
  belongs_to :user

  def author
    user
  end
end
