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
    
     def backed_projects
        ProjectBacker.all.select do |project|
            if project.backer == self
                project
            end 
        end 
     end

end