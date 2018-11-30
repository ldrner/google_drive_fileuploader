module Web
  module Controllers
    module Home
      class Index
        include Web::Action
        include Hanami::Action::Session

        # before { redirect_to('/oauth2authorize', status: 303) if ENV['HANAMI_ENV'] == 'production' && !client.access_token }
        expose :message
        expose :title

        def call(params)
          @message = flash[:message]
          # @title = client.configuration.inspect
          @title = 'hello'
          # self.body = @greeting.message
        end

        def client
          GoogleDriveFileuploader::Services::APIClient.connection
        end

      end
    end
  end
end
