require 'google/apis/drive_v3'
module Web
  module Controllers
    module Home
      class Create
        include Hanami::Action
        include Hanami::Action::Session

        def call(params)
          # file = params[:form] && params[:form][:asset]
          # if file
            # upload(file)
            # upload
            # flash[:message] = 'Complete!'
          # else
            # flash[:message] = 'Dude where is the file?'
          # end
          redirect_to '/'
        rescue => e
          flash[:message] = e.message
          redirect_to '/'
        end

        def drive_api
          @drive_api ||= ::Google::Apis::DriveV3::DriveService.new
        end

        def upload(options = {})
          drive_api.authorization = GoogleDriveFileuploader::Services::APIClient.connection

          # metadata = {
          #   name: options[:name] || file[:filename]
          # }
          # result = drive_api.create_file(
          #   metadata,
          #   upload_source: file[:tempfile],
          #   content_type: file[:type]
          # )
        end
      end
    end
  end
end
