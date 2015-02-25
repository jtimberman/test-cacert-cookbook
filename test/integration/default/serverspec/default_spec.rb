require_relative './spec_helper'

describe 'test-cacert' do
  describe command('openssl s_client -CAfile /etc/pki/tls/certs/ca-bundle.crt -connect packagecloud-repositories.s3.amazonaws.com:443 </dev/null 2>&1 | grep -i "verify return code"') do
    its(:stdout) { should match(/\s+Verify return code: 0 \(ok\)/)}
  end
end
