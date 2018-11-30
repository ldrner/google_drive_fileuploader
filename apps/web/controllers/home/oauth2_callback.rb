module Web
  module Controllers
    module Home
      class Oauth2Callback
        include Web::Action
        expose :title

        def call(params)
          # user_credentials.code = params[:code] if params[:code]
          # user_credentials.fetch_access_token!
          # redirect_to '/'
        end

        def user_credentials
          # Build a per-request oauth credential based on token stored in session
          # which allows us to use a shared API client.
          # @authorization ||= (
          #   auth = settings.authorization.dup
          #   auth.redirect_uri = to('/oauth2callback')
          #   auth.update_token!(session)
          #   auth
          # )
        end
      end
    end
  end
end
