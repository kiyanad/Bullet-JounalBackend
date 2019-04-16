class UserHabit < ApplicationRecord
  # validates :name, uniqueness: true

    belongs_to :user
    belongs_to :habit
    has_many :user_instances, dependent: :delete_all


end
