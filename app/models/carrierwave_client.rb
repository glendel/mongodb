class CarrierwaveClient < Client
  # Uploader
  mount_uploader :avatar, AvatarUploader
  
  #after_save :enqueue
end