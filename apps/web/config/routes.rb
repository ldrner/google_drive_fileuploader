# Configure your routes here
# See: http://hanamirb.org/guides/routing/overview/
#
# Example:
# get '/hello', to: ->(env) { [200, {}, ['Hello from Hanami!']] }
get '/', to: 'home#index'
post '/create', to: 'home#create'
get '/create', to: 'home#create'

get '/oauth2callback', to: 'home#oauth2_callback'

get '/oauth2authorize', to: 'home#oauth2_authorize'
