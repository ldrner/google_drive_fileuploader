require 'signet/oauth_2/client'
module GoogleDriveFileuploader
  module Services
    module APIClient
      def self.configure
        yield(configuration) if block_given?
      end

      def self.configuration
        Configuration.instance
      end

      def self.connection
        @connection ||= Signet::OAuth2::Client.new(
          :authorization_uri => configuration.authorization_uri,
          :token_credential_uri =>  configuration.token_credential_uri,
          :client_id => configuration.client_id,
          :client_secret => configuration.client_secret,
          :scope => configuration.scopes,
          :redirect_uri => configuration.redirect_uri
        )
      end
    end
  end
end