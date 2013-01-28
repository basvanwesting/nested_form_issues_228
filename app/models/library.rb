class Library < ActiveRecord::Base
  attr_accessible :name, :books_attributes

  has_many :books
  accepts_nested_attributes_for :books
end
