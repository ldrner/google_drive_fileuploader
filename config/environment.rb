require 'bundler/setup'
require 'hanami/setup'
require 'hanami/model'

require 'google/apis/drive_v3'

require_relative '../lib/google_drive_fileuploader'
require_relative '../apps/web/application'

Hanami.configure do
  mount Web::Application, at: '/'

  model do
    ##
    # Database adapter
    #
    # Available options:
    #
    #  * SQL adapter
    #    adapter :sql, 'sqlite://db/google_drive_fileuploader_development.sqlite3'
    #    adapter :sql, 'postgresql://localhost/google_drive_fileuploader_development'
    #    adapter :sql, 'mysql://localhost/google_drive_fileuploader_development'
    #
    adapter :sql, ENV.fetch('DATABASE_URL')

    ##
    # Migrations
    #
    migrations 'db/migrations'
    schema     'db/schema.sql'
  end

  mailer do
    root 'lib/google_drive_fileuploader/mailers'

    # See http://hanamirb.org/guides/mailers/delivery
    delivery :test
  end

  environment :development do
    # See: http://hanamirb.org/guides/projects/logging
    logger level: :debug
  end

  environment :production do
    logger level: :info, formatter: :json, filter: []

    mailer do
      delivery :smtp, address: ENV.fetch('SMTP_HOST'), port: ENV.fetch('SMTP_PORT')
    end
  end
end
