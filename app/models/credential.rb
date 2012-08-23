# -*- coding : utf-8 -*-

class Credential < ActiveFormModel
  attr_accessor :api_key, :secret_key

  validates_presence_of :api_key
  validates_presence_of :secret_key
end

