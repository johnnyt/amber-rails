require 'rack_dav'

Rails.application.routes.draw do
  # WebDAV saves JS files to app/assets/javascripts/amber and
  # saves smalltalk files to app/assets/smalltalk
  match "/amber(/:file)(.:type)(.:format)",
    :to => RackDAV::Handler.new(:root => File.expand_path('app/assets/javascripts', Rails.root))
  match "/smalltalk(/:file)(.:format)",
    :to => RackDAV::Handler.new(:root => File.expand_path('app/assets', Rails.root))
end
