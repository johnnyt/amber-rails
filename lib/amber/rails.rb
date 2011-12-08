gem_root = File.expand_path('../..', File.dirname(__FILE__))
$LOAD_PATH.unshift gem_root unless $LOAD_PATH.include?(gem_root)
require 'rubygems'
require 'pathname'

module Amber
  module Rails
    module_function

    if ::Rails.version < "3.1"
      require 'amber/rails/railtie'
    else
      require 'amber/rails/engine'
    end

    def gem_root
      @gem_root ||= Pathname.new(File.expand_path('../..', File.dirname(__FILE__)))
    end

    def asset_paths
      %w[ assets/stylesheets assets/javascripts ].map{ |dir| gem_root.join(dir) }
    end

    def configure
      ::Rails.application.config.assets.paths += asset_paths
    end
  end
end

require 'amber/rails/version'
