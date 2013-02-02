class FreeFormat::LibraryManager < FreeFormat

  attr_accessible :library_attributes

  has_one :library, :as => :free_format, :dependent => :destroy
  accepts_nested_attributes_for :library, :allow_destroy => true

  def build_associations
    build_library
  end

  class Create < FreeFormat::LibraryManager

  end

end
