class Book < ActiveRecord::Base
  belongs_to :library
  attr_accessible :title, :library_id
end
