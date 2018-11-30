module Web
  module Controllers
    module Home
      class Oauth2Authorize
        include Web::Action
        expose :title

        def call(params)
          redirect_to(client.authorization_uri.to_s, status: 303)
        end

        def client
          GoogleDriveFileuploader::Services::APIClient.connection
        end

        # def user_credentials
            # GoogleDriveFileuploader::Services::APIClient.configuration
          # Build a per-request oauth credential based on token stored in session
          # which allows us to use a shared API client.
          # @authorization ||= (
          #   auth = settings.authorization.dup
          #   auth.redirect_uri = to('/oauth2callback')
          #   auth.update_token!(session)
          #   auth
          # )
        # end
      end
    end
  end
end
