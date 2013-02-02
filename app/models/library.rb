class Library < ActiveRecord::Base
  attr_accessible :name, :books_attributes

  has_many :books, :dependent => :destroy
  accepts_nested_attributes_for :books, :allow_destroy => true
end
