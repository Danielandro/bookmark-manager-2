feature 'Create bookmarks' do
  scenario 'Add a new bookmark' do
    visit '/bookmarks/new'
    fill_in :url, with: "http://www.twitter.com"
    click_button "Submit"
    expect(page).to have_content("http://www.twitter.com")
  end
end
