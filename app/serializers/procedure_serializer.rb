class ProcedureSerializer < ActiveModel::Serializer
  attributes :id, :action, :duration
  has_one :staff
end
