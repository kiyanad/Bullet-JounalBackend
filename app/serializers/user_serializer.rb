class UserSerializer < ActiveModel::Serializer
  attributes :name, :username
  has_many :user_habits
  has_many :habits, through: :user_habits
  has_many :user_instances, through: :user_habits



end
