module Capybara
  module Poltergeist
    class << self
      def windows?
        RbConfig::CONFIG["host_os"] =~ /mingw|mswin|cygwin/
      end

      def jruby?
        RUBY_PLATFORM == "java"
      end

      def rubinius?
        defined?(RUBY_ENGINE) && RUBY_ENGINE == "rbx"
      end
    end
  end
end
