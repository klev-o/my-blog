class Post < ApplicationRecord
  belongs_to :user

  has_many :commentaries, :dependent => :destroy

  validates :title, presence: true
  validates :title, length: { maximum: 1000, minimum: 5 }
  validates :body, presence: true

  after_create :put_to_log

  private

  def put_to_log
    Rails.logger.info '#########################################'
    Rails.logger.info 'Hello from callback'
    Rails.logger.info '#########################################'
  end
end
