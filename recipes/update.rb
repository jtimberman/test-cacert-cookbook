remote_file '/etc/pki/tls/certs/ca-bundle.crt' do
  source 'http://curl.haxx.se/ca/cacert.pem'
  sensitive true
end
