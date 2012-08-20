# -*- coding : utf-8 -*-
require 'mushikago'

class UnauthorizedError < Exception; end

class Mushikago::Mitsubachi::Client
  def send_request request
    result = super(request)
    raise UnauthorizedError if result.meta['status'] == 401
    return result
  end
end
