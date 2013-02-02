class FreeFormat::BookManager < FreeFormat

  attr_accessible :book_attributes

  has_one :book, :as => :free_format, :dependent => :destroy
  accepts_nested_attributes_for :book, :allow_destroy => true

  def build_associations
    build_book
  end

  class Create < FreeFormat::BookManager

  end

end
