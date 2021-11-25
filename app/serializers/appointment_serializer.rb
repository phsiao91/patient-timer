class AppointmentSerializer < ActiveModel::Serializer
  attributes :id, :time, :duration
  has_one :staff
  has_one :user
end
