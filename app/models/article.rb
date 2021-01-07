class Article < ApplicationRecord
  validates :title, :content, presence: true, length: {minimum: 6, maximum: 100}

end
