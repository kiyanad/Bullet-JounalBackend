class UserInstance < ApplicationRecord
  belongs_to :user_habit
has_one :user, through: :user_habit



end
