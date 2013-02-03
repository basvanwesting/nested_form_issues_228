class FreeFormat::LibraryManager < FreeFormat

  attr_accessible :libraries_attributes

  has_many :libraries, :as => :free_format, :dependent => :destroy
  accepts_nested_attributes_for :libraries, :allow_destroy => true

  def build_associations
    libraries.build
  end

  class Create < FreeFormat::LibraryManager

  end

end
