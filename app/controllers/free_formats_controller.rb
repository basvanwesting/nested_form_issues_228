class FreeFormatsController < ApplicationController

  before_filter :find_free_format, :except => [:index, :select_type]
  before_filter :find_free_formats, :only => :index

  def index
  end

  def show
  end

  def select_type
    @free_format_class_names = FreeFormatRepository.all_class_names
  end

  def new
    @free_format.build_associations
  end

  def edit
  end

  def create
    if @free_format.save
      redirect_to free_formats_path, notice: 'Free Format was successfully created.'
    else
      render :action => :new, :free_format_class_name => free_format_class_name
    end
  end

  def update
    if @free_format.update_attributes(params[:free_format])
      redirect_to free_formats_path, notice: 'Free Format was successfully updated.'
    else
      render :action => :edit, :free_format_class_name => free_format_class_name
    end
  end

  def destroy
    @free_format.destroy
    redirect_to free_formats_url
  end

  private

  def free_format_class
    FreeFormat.class_factory free_format_class_name
  end

  def free_format_class_name
    params[:free_format_class_name]
  end

  def find_free_formats
    @free_formats = FreeFormat.all.map { |d| FreeFormatDecorator.new(d) }
  end

  def find_free_format
    if params[:id]
      @free_format = FreeFormatDecorator.new(free_format_class.find(params[:id]))
    else
      @free_format = FreeFormatDecorator.new(free_format_class.new(params[:free_format]))
    end
  end

end

