class PaperclipClient < Client
  include Mongoid::Paperclip
  # Fields declaration
  field :use_carrierwave, :type => Boolean, :default => false
  # Uploader
  has_mongoid_attached_file(
    :avatar,
    {
      :path => "public/uploads/:class/:attachment/:id/:style_:filename",
      :url => "/uploads/:class/:attachment/:id/:style_:filename",
      :styles => { :original => '720x720>', :main => '100x100>', :thumb => '50x50' },
      :storage => :s3,
      :s3_credentials => File.join(Rails.root, 'config', 's3.yml')
      #:bucket => 'my-bucket-for-test-carrierwave'
    }
  )
end