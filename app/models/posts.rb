class Posts < ActiveRecord::Base
  attr_accessible :title, :body, :category_id
  belongs_to :categories
end
