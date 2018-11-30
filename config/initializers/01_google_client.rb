GoogleDriveFileuploader::Services::APIClient.configure do |config|
  config.client_id            = ENV.fetch("CLIENT_ID")
  config.client_secret        = ENV.fetch("CLIENT_SECRET")
  config.authorization_uri    = "https://accounts.google.com/o/oauth2/auth"
  config.scopes               = "https://www.googleapis.com/auth/drive.file"
  config.token_credential_uri = "https://www.googleapis.com/oauth2/v3/token"
  config.redirect_uri         = "https://intense-springs-85066.herokuapp.com/oauth2callback"
end
