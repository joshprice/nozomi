class Nozomi::Template
  def initialize(*templates)
    file.puts template_path_definition, ''
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
  
  def template_path_definition
    "TemplatePath = '#{template_path}'"
  end
  
  def core_template
    open(core_path) { |f| f.read }
  end
  
  def core_path
    File.join File.dirname(__FILE__), '..', 'templates', 'core.rb' 
  end
end
