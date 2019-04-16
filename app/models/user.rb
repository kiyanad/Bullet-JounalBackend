class User < ApplicationRecord
  has_secure_password
  validates :username, uniqueness: { case_sensitive: false }, presence: true
  validates :name, presence: true

has_many :user_habits, dependent: :delete_all
has_many :habits, through: :user_habits
has_many :user_books, dependent: :delete_all
has_many :user_instances, through: :user_habits



end
