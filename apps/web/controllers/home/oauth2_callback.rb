require 'google/apis/drive_v3'

module Web
  module Controllers
    module Home
      class Oauth2Callback
        include Web::Action
        include Hanami::Action::Session

        def call(params)
          $client.code = params[:code] if params[:code]
          $client.fetch_access_token!
          drive_api.authorization = $client
          file_metadata = {
            name: "JR-#{Time.now.strftime('%d-%m-%Y-%I:%M')}.txt",
            mime_type: 'text/plain'
          }
          file = drive_api.create_file(file_metadata, fields: 'id')
          flash[:message] = "Complete! file: #{file.inspect}"
          redirect_to '/'
        end

        def drive_api
          @drive_api ||= ::Google::Apis::DriveV3::DriveService.new
        end
      end
    end
  end
end
