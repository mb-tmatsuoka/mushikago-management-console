# -*- coding : utf-8 -*-

class ActiveFormModel
  extend ActiveModel::Naming
  include ActiveModel::Conversion
  include ActiveModel::Validations
  
  def initialize attributes={}
    attributes.each do |name, value|
      send("#{name}=", value) rescue nil
    end
  end

  def persisted?
    false
  end
end
