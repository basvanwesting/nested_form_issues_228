class Chapter < ActiveRecord::Base
  belongs_to :book
  attr_accessible :title, :book_id
end
