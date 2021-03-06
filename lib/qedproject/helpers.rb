module QEDProject
  module Helpers
    
    # Copies a file - wraps FileUtils to print a nice message if verbose is on.
    
    def cp(source, destination, options = {})
      FileUtils.cp source, destination
      puts "Created #{File.join destination, File.basename(source)}" if options[:verbose]
    end
    
    def cp_r(source, destination, options = {})
      FileUtils.cp_r source, destination
      puts "Created #{File.join destination, File.basename(source)}" if options[:verbose]
    end
    
    def mkdir_p(destination, options = {})
      FileUtils.mkdir_p destination
      puts "Created folder #{destination}" if options[:verbose]
    end
    
    def create_file(destination, options = {})
      if options[:no_overwrite] && File.exist?(destination)
        puts "Skipping #{destination}" if options[:verbose]
      else
        FileUtils.touch destination
        puts "Created file #{destination}" if options[:verbose]
      end
    end
    
    # Reads a template from the file system,
    # evaluates it with ERB
    # places it in the output folder specified.
    # Takes the binding context as the last parameter
    # so that ERb has access to instance variables, etc.
    # This works similar to how Rails and Sinatra templates
    # work.
    def render_template_to_file(template, file, context)
      t = File.read(File.join(self.template_root, template))
      File.open(file, "w") do |f|
        f << ERB.new(t, nil, "-").result(context)
      end
    end  
    
  end
end
