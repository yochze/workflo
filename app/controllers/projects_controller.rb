class ProjectsController < ApplicationController

	def index
		@projects = Project.all
		
	end
	
	def new
		@project = Project.new		
	end
	
	def show
		@project  = Project.find(params[:id])
		@sections = @project.sections
		@members  = @project.members
	end

	def create
	  @project = Project.new(params[:project])
	  @project.user_id = current_user.id
          respond_to do |format|
            if @project.save
              @section = @project.sections.build
              @member  = @project.members.build
              format.js 
            else
              format.html { render action: "new" }
            end
          end
		
	end


end
