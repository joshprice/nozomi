class Nozomi::Interactive
  def initialize(app)
    @app = app
  end
  
  def template
    Nozomi::Template.new(@app, *selected_templates)
  end
  
  private
  
  def selected_templates
    @selected_templates ||= Nozomi.optional_templates.select do |template|
      print "#{template}? (y/n) "
      STDIN.gets.chomp == 'y'
    end
  end
end
