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
      projects = Project.all.select do |project|
        project.backer == self.backer
      end
    end 
    
     def backed_projects
        
        projects.map do |project|
            self == project.backer
        end  
     end

end