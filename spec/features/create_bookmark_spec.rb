feature 'Create bookmarks' do
  scenario 'Add a new bookmark' do
    visit '/bookmarks/new'
    fill_in :url, with: "http://www.twitter.com"
    fill_in :title, with: "Twitter"
    click_button "Submit"
    
    expect(page).to have_link("Twitter", href: "http://www.twitter.com")
  end
end
