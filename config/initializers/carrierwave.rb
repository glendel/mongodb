CarrierWave.configure do |config|
  config.permissions = 0777
  config.s3_access_policy = :public_read
  config.delete_tmp_file_after_storage = false
  config.s3_access_key_id = 's3_access_key_id'
  config.s3_secret_access_key = 's3_secret_access_key'
  config.s3_bucket = 'my-bucket-for-test-carrierwave'
  #config.s3_region = 'eu-west-1'
end