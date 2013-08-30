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
              # format.html { redirect_to '#new-modules', notice: '' }
              @section = @project.sections.build
              @member = @project.members.build
              format.js 
            else
              format.html { render action: "new" }
            end
          end
		
	end


end
