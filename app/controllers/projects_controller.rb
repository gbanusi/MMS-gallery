class ProjectsController < ApplicationController
  
	before_action :authenticate_admin!, only: [:new, :create]

	layout 'gallery'

	def index
		@projects = Project.order('created_at DESC').all
	end

	def new
		
	end


	def create
		@project = Project.new(project_params)


		if @project.save
			flash[:notice] = 'Projekt je dodan'
			
		else
			flash[:notice] = 'Nije uspjelo dodavanje'
		end	
		redirect_to projects_path

	end

    def destroy
	    Project.find(params[:project_id]).destroy
	    flash[:notice] = "Project deleted"
	    redirect_to projects_path
	  end

    def project_params
    	params.require(:project).permit(:link, :name) 
    end


end
