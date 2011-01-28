class Nozomi::CLI < Clamp::Command
  self.description = <<-DESC
A wrapper for the `rails new` command, with an extended template interface. The
standard set of templates applied are:
  - initialised git repository
  - haml
  - compass
  - formtastic
  - decent_exposure
  - rspec
  - rspec-rails
  - capybara
  - jquery
  - README.markdown
  - config/database.example.yml
  DESC
  
  parameter 'APP_NAME', 'The name of the Rails application you want to generate'
  
  def execute
    puts command
    # system cmd
  end
  
  private
  
  def template_path
    File.expand_path(
      File.join(File.dirname(__FILE__), "..", "lib", "rails3-template.rb")
    )
  end
  
  def command
    "rails new #{app_name} -m #{template_path} --skip-gemfile --skip-test-unit --skip-prototype"
  end
end
