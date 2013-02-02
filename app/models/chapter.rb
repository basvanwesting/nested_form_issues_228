class Chapter < ActiveRecord::Base
  belongs_to :book
  attr_accessible :title, :book_id, :free_format_id, :free_format_type
  belongs_to :free_format, :polymorphic => true
end
