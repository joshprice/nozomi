module Nozomi
  def self.all_templates
    Dir[File.join(File.dirname(__FILE__), 'templates', '*.rb')].collect { |file|
      file[/\/([^\/]+).rb$/, 1]
    }
  end
  
  def self.optional_templates
    # Force RSpec first - need it to be before Cucumber.
    ['rspec'] | (all_templates - ['core', 'standard'])
  end
end

require 'tempfile'
require 'clamp'

require 'nozomi/cli'
require 'nozomi/interactive'
require 'nozomi/template'
