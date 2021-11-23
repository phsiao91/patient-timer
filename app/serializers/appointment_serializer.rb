class AppointmentSerializer < ActiveModel::Serializer
  attributes :id, :time
  has_one :staff
  has_one :user
end
