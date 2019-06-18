feature "Viewing bookmarks" do

  scenario "visiting index page" do
    visit "/"
    expect(page).to have_content("Bookmark Manager")
  end
  
  scenario "display all bookmarks" do
    visit "/bookmarks"
    expect(page).to have_content("https://www.google.com")
    expect(page).to have_content("https://www.makers.com")
    expect(page).to have_content("https://www.yahoo.com")
  end
end
