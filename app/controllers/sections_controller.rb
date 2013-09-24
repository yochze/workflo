class SectionsController < ApplicationController
  def new
     # @project = Project.find(params[:project_id])    
  end

  def create
    @project = Project.find(params[:project_id])
    @section = @project.sections.new(params[:section])
    respond_to do |format|
      if @section.save
        format.js 
      else
        format.html { render action: "new" }
      end
    end     
  end

def destroy
  @project = Project.find(params[:project_id])
  @section = @project.sections.find(params[:id])
  @section.destroy
  respond_to do |format| 
    # format.html
    format.js 
  end
end

end
