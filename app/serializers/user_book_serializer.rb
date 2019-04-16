class UserBookSerializer < ActiveModel::Serializer
  attributes :name, :author, :shortname, :status
  has_one :user
end
