class Categories < ActiveRecord::Base
  attr_accessible :name
  has_many :postses
end
