class LocationSerializer < ActiveModel::Serializer
  attributes :id, :name, :creator, :users, :chores
end
