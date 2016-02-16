require 'colored'

module Pod
  class Installer
    alias_method :install_before_always_be_bundling, :install!

    def install!
      if validates_for_bundler
        install_before_always_be_bundling!
      else
        puts "\n\n ** Please run `pod install` with bundle exec instead. **\n\n".red
      end
    end

    def validates_for_bundler
      defined?(Bundler)
    end
    
  end
end
