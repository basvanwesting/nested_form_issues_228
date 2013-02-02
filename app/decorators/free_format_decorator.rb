class FreeFormatDecorator < Draper::Decorator
  delegate_all

  # Define presentation-specific methods here. Helpers are accessed through
  # `helpers` (aka `h`). You can override attributes, for example:
  #
  #   def created_at
  #     helpers.content_tag :span, class: 'time' do
  #       source.created_at.strftime("%a %m/%d/%y")
  #     end
  #   end

  def template_location
    class_name.underscore.gsub(/^free_format/,'free_formats')
  end

  def class_name
    source.class.name
  end

end
