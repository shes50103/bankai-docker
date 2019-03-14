require 'bankai/docker/version'
require 'bankai/docker/generators/install'
require 'bankai/docker/railtie'
require 'bankai/docker/dsl'
require 'bankai/docker/package'
require 'bankai/docker/file'
require 'bankai/docker/stage'
require 'bankai/docker/command'
require 'bankai/docker/copy'

module Bankai
  # :nodoc:
  module Docker
    class << self
      def setup(&block)
        @config =
          Bankai::Docker::File.setup(&block)
      end
    end
  end
end
