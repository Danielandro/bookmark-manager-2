feature "Viewing bookmarks" do

  scenario "visiting index page" do
    visit "/"
    expect(page).to have_content("Bookmark Manager")
  end
  
  scenario "display all bookmarks" do
    visit "/bookmarks"
    expect(page).to have_content("http://www.google.com")
    expect(page).to have_content("http://www.makersacademy.com")
    expect(page).to have_content("http://www.destroyallsoftware.com")
  end
end
