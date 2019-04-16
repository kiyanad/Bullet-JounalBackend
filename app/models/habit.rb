class Habit < ApplicationRecord
  # validates :name, uniqueness: { case_sensitive: false }

has_many :user_habits,  :dependent => :destroy
has_many :users, through: :user_habits,  :dependent => :destroy
has_many :user_instances, through: :user_habits,  :dependent => :destroy
has_many :user_instances, through: :user_habits,  :dependent => :destroy

end
