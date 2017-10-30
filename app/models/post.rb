class Post < ApplicationRecord
  belongs_to :user
  validates :title, presence: true
  validates :title, length: { maximum: 100, minimum: 5 }
  validates :text, presence: true
  validates :user, absence: true
end
