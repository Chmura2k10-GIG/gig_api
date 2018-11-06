class InstrumentSerializer < ActiveModel::Serializer
  attributes :id, :name, :avatar, :created_at, :updated_at
end
