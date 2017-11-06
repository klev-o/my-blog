class Commentary < ApplicationRecord
  belongs_to :user
  belongs_to :post
  validates :body, presence: true
end
