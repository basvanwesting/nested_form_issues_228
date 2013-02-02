class Library < ActiveRecord::Base
  attr_accessible :name, :books_attributes, :free_format_id, :free_format_type
  belongs_to :free_format, :polymorphic => true

  has_many :books, :dependent => :destroy
  accepts_nested_attributes_for :books, :allow_destroy => true
end
