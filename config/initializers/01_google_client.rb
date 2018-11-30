require 'signet/oauth_2/client'
$client = Signet::OAuth2::Client.new(
  :client_id            => ENV.fetch("CLIENT_ID"),
  :client_secret        => ENV.fetch("CLIENT_SECRET"),
  :authorization_uri    => "https://accounts.google.com/o/oauth2/auth",
  :token_credential_uri =>  "https://www.googleapis.com/oauth2/v3/token",
  :scope                => "https://www.googleapis.com/auth/drive.file",
  :redirect_uri         => "https://intense-springs-85066.herokuapp.com/oauth2callback"
)
