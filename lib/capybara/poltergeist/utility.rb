module Capybara
  module Poltergeist
    class << self
      def windows?
        RbConfig::CONFIG["host_os"] =~ /mingw|mswin|cygwin/
      end

      def jruby?
        RUBY_PLATFORM == "java"
      end
    end
  end
end
