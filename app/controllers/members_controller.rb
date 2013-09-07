class MembersController < ApplicationController

    def create
    @project = Project.find(params[:project_id])
    @member  = @project.members.new(params[:member])
    respond_to do |format|
      if @member.save
        format.js 
      else
        format.html { render action: "new" }
      end
    end     
  end

end
