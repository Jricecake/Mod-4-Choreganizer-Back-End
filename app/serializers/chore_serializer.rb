class ChoreSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :user_id, :location_id, :day, :icon, :completed
end
