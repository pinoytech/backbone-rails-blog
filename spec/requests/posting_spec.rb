require 'spec_helper'

describe 'Entries', js: true do

  let!(:post) {FactoryGirl.create(:entry)}

  context "CRUD" do
    it 'add an entry successfully' do
      visit root_path
      click_link 'New'
      fill_in 'title_content', with: 'New Title'
      fill_in 'body_content', with: 'New Body'
      click_button 'Submit'
      click_link 'Index'
      page.should have_content('New Title')
    end

    it 'edit an entry successfully' do
      visit root_path
      find("#edit-#{post.id}").click
      fill_in 'title_content', with: 'Edited Title'
      fill_in 'body_content', with: 'Edited Body'
      click_button 'Submit'
      click_link 'Index'
      page.should have_content('Edited Title')
    end

    it 'delete an entry successfully' do
      visit root_path
      find("#delete-#{post.id}").click
      visit root_path
      page.should_not have_content('Title of the Post')
    end

    it "should be seen when you click on post title" do
      visit root_path
      click_link("Title of the Post")
      page.should have_content('Body of the Post')
    end
  end
end