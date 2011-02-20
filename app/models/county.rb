class County
  include Mongoid::Document
  # Fields declaration
  field :name, :type => String
  # Associations
  referenced_in :country
  references_many :clients
  references_many :cities
  # Validations
  validates_presence_of :name, :country_id
end