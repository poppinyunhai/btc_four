class Donor < ActiveRecord::Base
  attr_accessible :address, :name, :num, :type_desc
end
