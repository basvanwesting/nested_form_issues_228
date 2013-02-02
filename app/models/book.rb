class Book < ActiveRecord::Base
  belongs_to :library
  attr_accessible :title, :library_id, :chapters_attributes

  has_many :chapters, :dependent => :destroy
  accepts_nested_attributes_for :chapters, :allow_destroy => true
end
