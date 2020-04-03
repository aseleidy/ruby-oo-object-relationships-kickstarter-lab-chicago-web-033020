require 'pry'
require_relative 'backer.rb'
require_relative 'project_backer.rb'

class Project

    attr_reader :title, :backer 

    def initialize(title)
        @title = title 
    end
    
    def add_backer(backer)
        ProjectBacker.new(self, backer)
        @backer = backer
    end
end