require 'omniauth/strategies/oauth'

module OmniAuth
  module Strategies
    class Xing < OmniAuth::Strategies::OAuth

      args [:consumer_key, :consumer_secret]

      option :client_options, {
        :access_token_path  => '/v1/access_token',
        :authorize_path     => '/v1/authorize',
        :request_token_path => '/v1/request_token',
        :site               => 'https://api.xing.com',
      }

      info do
        {
          :first_name   => raw_info["first_name"],
          :last_name    => raw_info["last_name"],
          :email        => raw_info["active_email"],
          :image        => raw_info["photo_urls"]["size_128x128"],
          :url          => raw_info["permalink"],
          :name         => raw_info["display_name"],
          :urls         => {
            'public_profile' => raw_info["permalink"]
          }
        }
      end

      uid { access_token.params[:user_id] }

      extra do
        { 'raw_info' => raw_info }
      end

      def raw_info
        @raw_info ||= MultiJson.decode( access_token.get('/v1/users/me').body )["users"].first
      end

    end
  end
end
