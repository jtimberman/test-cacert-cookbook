remote_file '/etc/pki/tls/certs/ca-bundle.crt' do
  source 'http://opscode-omnibus-cache.s3.amazonaws.com/cacerts-2014.08.20-c9f4f7f4d6a5ef6633e893577a09865e'
  checksum '040c2090c2594f828649ce446a24631b63fc79402633276482b7dca6a0cc091f'
  sensitive true
end
