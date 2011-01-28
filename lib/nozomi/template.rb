class Nozomi::Template
  def initialize(app, *templates)
    file.puts constant_definitions(app), ''
    file.puts core_template
    
    templates.each do |template|
      file.puts "apply template('#{template}')"
    end
    
    file.close
  end
  
  def path
    file.path
  end
  
  private
  
  def file
    @file ||= Tempfile.new('nozomi')
  end
  
  def template_path
    File.expand_path File.join(File.dirname(__FILE__), '..', 'templates')
  end
  
  def constant_definitions(app)
    app = File.join Dir.pwd, app if app[/^[\~\/]/].nil?
    
    <<-RUBY
TemplatePath = '#{template_path}'
AppPath      = '#{app}'
    RUBY
  end
  
  def core_template
    open(core_path) { |f| f.read }
  end
  
  def core_path
    File.join File.dirname(__FILE__), '..', 'templates', 'core.rb' 
  end
end
