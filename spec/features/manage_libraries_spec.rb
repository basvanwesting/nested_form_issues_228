require 'spec_helper'

describe "manage libraries", :type => :feature, :js => true do

  it "add a library without a book" do
    visit '/libraries/new'
    within("#new_library") do
      fill_in 'Library Name', :with => 'some library name'
    end
    click_on 'Create Library'
    page.should have_content 'Library was successfully created'
    Library.first.name.should == 'some library name'
  end

  it "add a library with a book" do
    visit '/libraries/new'
    fill_in 'Library Name', :with => 'another library name'
    click_on 'Add Book'
    fill_in 'Book Title', :with => 'some book title'
    click_on 'Create Library'
    page.should have_content 'Library was successfully created'
    Library.first.name.should == 'another library name'
    Library.first.books.first.title.should == 'some book title'
  end

end
