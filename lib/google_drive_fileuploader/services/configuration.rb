require 'singleton'

module GoogleDriveFileuploader
  module Services
    class Configuration
      include Singleton

      attr_accessor :client_id, :client_secret, :authorization_uri, :scopes, :token_credential_uri, :redirect_uri
    end
  end
end