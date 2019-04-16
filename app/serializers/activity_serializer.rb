class ActivitySerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :time_expected, :image_url
end
