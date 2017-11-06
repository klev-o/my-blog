class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable
  validates :name, presence: true
  validates :name, length: { maximum: 100, minimum: 2 }
  validates :name, uniqueness: true
  validates :name, format: { with: /\w+/i, message: 'only letters allowed' }
end
