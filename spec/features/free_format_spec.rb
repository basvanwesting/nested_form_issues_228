require 'spec_helper'

describe "manage free formats", :type => :feature, :js => true do

  it "Create a Book the free format way" do
    visit '/free_formats'
    click_on 'New free format'
    click_on 'FreeFormat::BookManager::Create'
    fill_in 'Book Title', :with => 'some book title'
    click_on 'Add Chapter'
    fill_in 'Chapter Title', :with => 'some chapter title'
    click_on 'Submit'
    page.should have_content 'Listing Free Formats'
    Book.first.title.should == 'some book title'
    Book.first.chapters.first.title.should == 'some chapter title'
  end

  it "Create a Library the free format way" do
    visit '/free_formats'
    click_on 'New free format'
    click_on 'FreeFormat::LibraryManager::Create'
    fill_in 'Library Name', :with => 'another library name'
    click_on 'Add Book'
    fill_in 'Book Title', :with => 'some book title'
    click_on 'Add Chapter'
    fill_in 'Chapter Title', :with => 'some chapter title'
    click_on 'Submit'
    page.should have_content 'Listing Free Formats'
    Library.first.name.should == 'another library name'
    Library.first.books.first.title.should == 'some book title'
    Library.first.books.first.chapters.first.title.should == 'some chapter title'
  end


end
