class City
  include Mongoid::Document
  # Fields declaration
  field :name, :type => String
  # Associations
  referenced_in :country
  referenced_in :county
  references_many :client
  # Validations
  validates_presence_of :name, :country_id, :county_id
end