require 'ostruct'
require 'thor'
require 'yaml'

module GB
  class CLI < Thor
    include Thor::Actions
    
    desc "fix [NUMBER] [SHORT_DESCRIPTION]", "Creates a bug fix branch"
    def fix(number, *name)
      run "git checkout -b #{committer}/#{issue_prefix}-#{number}/#{name.join(' ').branchify}"
    end
    
    desc "feature [SHORT_DESCRIPTION]", "Creates a feature branch"        
    def feature(*name)
      run "git checkout -b #{committer}/#{name.join(' ').branchify}"
    end
    
    desc "setup", "Runs the first time configuration"
    def setup
      configure
    end
    
    private

    @@FILE_NAME = '.gbconfig'
    def config
      @config ||= OpenStruct.new(YAML.load(File.open(@@FILE_NAME)))
    rescue
      say "gb isn't configured yet, configuring...", :red
      configure
    end
    
    def configure
      options = {}
      options[:issue_prefix] = ask "Issue prefix?"
      options[:committer] = ask "Committer initials?"      
      File.open(@@FILE_NAME, 'w') do |f|
        f.write(options.to_yaml)
      end
      config
    end
    
    def committer
      config.committer
    end
    
    def issue_prefix
      config.issue_prefix
    end
  end  
end

class String
  def branchify
    downcase.gsub(' ', '-')
  end
end