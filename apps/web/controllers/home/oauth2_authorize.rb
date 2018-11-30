require 'signet/oauth_2/client'

module Web
  module Controllers
    module Home
      class Oauth2Authorize
        include Web::Action
        include Hanami::Action::Session

        def call(params)
          redirect_to($client.authorization_uri.to_s, status: 303)
        end

      end
    end
  end
end
