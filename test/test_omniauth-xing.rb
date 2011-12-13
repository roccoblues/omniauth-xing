require 'helper'

class TestOmniauthXing < Test::Unit::TestCase

  def setup
    @strategy = OmniAuth::Strategies::Xing.new(nil, {})
  end

  def test_client_options
    assert_equal @strategy.options.client_options.site, 'https://api.xing.com'
    assert_equal @strategy.options.client_options.access_token_path, '/v1/access_token'
    assert_equal @strategy.options.client_options.authorize_path, '/v1/authorize'
    assert_equal @strategy.options.client_options.request_token_path, '/v1/request_token/'
  end

end
