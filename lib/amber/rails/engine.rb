module Amber
  module Rails

    # By inheriting from Rails::Engine, Rails is informed that the
    # directory for this gem may contain assets and the app/assets,
    # lib/assets and vendor/assets directories of this engine are
    # added to the search path of Sprockets.
    class Engine < ::Rails::Engine
    end

  end
end
