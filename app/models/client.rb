class Client
  include Mongoid::Document
  # Fields declaration
  field :avatar, :type => String
  field :id_number, :type => String
  field :first_name, :type => String
  field :last_name, :type => String
  field :birthday, :type => Date
  # Associations
  referenced_in :id_type
  referenced_in :gender
  referenced_in :country
  referenced_in :county
  referenced_in :city
  # Validations
  validates_presence_of :id_type_id, :id_number, :first_name, :country_id, :county_id, :city_id
  validates_uniqueness_of :id_number
  # Uploader
  mount_uploader :avatar, AvatarUploader
  
  #------------------------------------------------------------------
  # Returns the full name of the client.
  #------------------------------------------------------------------
  def full_name
    return( "#{self.first_name} #{self.last_name}".strip )
  end
end