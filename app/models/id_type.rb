class IdType
  include Mongoid::Document
  # Fields declaration
  field :code, :type => String
  field :name, :type => String
  # Associations
  referenced_in :client
  # Validations
  validates_presence_of :code, :name
end