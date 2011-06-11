class Nozomi::Interactive
  def template
    Nozomi::Template.new(*selected_templates)
  end
  
  private
  
  def selected_templates
    @selected_templates ||= Nozomi.optional_templates.select do |template|
      print "#{template}? (y/n) "
      STDIN.gets.chomp == 'y'
    end
  end
end
