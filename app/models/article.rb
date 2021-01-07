class Article < ApplicationRecord
  belongs_to :user
  validates :title, :content, presence: true, length: {minimum: 6, maximum: 100}

end
