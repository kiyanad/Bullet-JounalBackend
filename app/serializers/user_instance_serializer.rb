class UserInstanceSerializer < ActiveModel::Serializer
  attributes :user_habit_id, :status, :date
  belongs_to :user_habit
belongs_to :user, through: :user_habit

end
