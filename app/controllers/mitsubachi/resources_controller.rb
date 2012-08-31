# -*- coding : utf-8 -*-
class Mitsubachi::ResourcesController < ApplicationController
  def list
    resources = mitsubachi.resource_list(
      request[:project_id],
      limit: request['limit'] || 20,
      offset: request['offset'] || 0).response
    render json: resources
  end
end
