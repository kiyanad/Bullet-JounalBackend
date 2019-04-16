class UserHabitSerializer < ActiveModel::Serializer
  attributes  :id, :user_id, :habit_id
  belongs_to :user
  belongs_to :habit
  has_many :user_instances

end
