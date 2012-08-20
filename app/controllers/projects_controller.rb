class ProjectsController < ApplicationController
  def index
    @projects = mitsubachi.project_list
  end
end
