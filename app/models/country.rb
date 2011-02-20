class Country
  include Mongoid::Document
  # Fields declaration
  field :name, :type => String
  # Associations
  references_many :clients
  references_many :counties
  references_many :cities
  # Validations
  validates_presence_of :name
end