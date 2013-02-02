require 'spec_helper'

describe Library do

  let(:free_format) { FreeFormat::LibraryManager::Create.new }
  it 'can have a free_format' do
    subject.free_format = free_format
    subject.save
    subject.free_format.should == free_format
  end
end
