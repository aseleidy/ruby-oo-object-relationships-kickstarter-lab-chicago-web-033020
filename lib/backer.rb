require 'pry'
require_relative 'project.rb'
require_relative 'project_backer.rb'

class Backer
    attr_reader :name 

    def initialize(name)
        @name = name
    end 

    def back_project(project)
        ProjectBacker.new(project, self)
    end
    
    def projects 
      binding.pry
      projects = ProjectBacker.all.select do |project|
        
        project.name == self.name
        binding.pry
      end
    end 
    
     def backed_projects
        projects.map do |list|
            list.project
        end  
     end

end

