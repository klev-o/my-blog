class Commentary < ApplicationRecord
  belongs_to :user
  belongs_to :post
  validates :text, presence: true
  validates :user, absence: true
  validates :post, absence: true
end
