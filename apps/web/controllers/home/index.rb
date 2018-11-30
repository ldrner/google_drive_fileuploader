module Web
  module Controllers
    module Home
      class Index
        include Web::Action
        expose :title

        # def initialize(greeting: Greeting.new)
        #   @greeting = greeting
        # end

        def call(params)

          # @title = client.configuration.inspect
          @title = client.authorization_uri
          # self.body = @greeting.message
        end

        def client
          GoogleDriveFileuploader::Services::APIClient.connection
        end
      end
    end
  end
end
