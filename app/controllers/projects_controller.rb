class ProjectsController < ApplicationController

	def index
		@projects = Project.all
		
	end
	
	def new
		@project = Project.new		
	end
	
	def show
		
	end

	def create
	  @project = Project.new(params[:project])
          respond_to do |format|
            if @project.save
              @section = @project.sections.build
              @member  = @project.members.build
              @project.add_creator_as_project_member(current_user.id)
              format.js 
            else
              format.html { render action: "new" }
            end
          end
		
	end


end
