class FreeFormat < ActiveRecord::Base

  def self.class_factory(free_format_class_name)
    raise "unregistered FreeFormat class name: #{free_format_class_name}" unless FreeFormatRepository.all_class_names.include?(free_format_class_name)
    free_format_class_name.constantize
  end

end
