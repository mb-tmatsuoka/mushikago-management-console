class Mitsubachi::ProjectsController < ApplicationController
  def index
    @projects = mitsubachi.project_list
  end

  def show
    @resources = mitsubachi.resource_list(request[:id])
    @scripts = mitsubachi.script_list(request[:id])
  end
end
