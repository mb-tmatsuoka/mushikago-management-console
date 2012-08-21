# -*- coding : utf-8 -*-

class Credential
  extend ActiveModel::Naming
  include ActiveModel::Conversion
  include ActiveModel::Validations

  attr_accessor :api_key, :secret_key

  validates_presence_of :api_key
  validates_presence_of :secret_key

  def persisted?
    false
  end
end
