feature "Delete bookmark" do
  scenario "Delete a bookmark by id" do
    Bookmark.create(url: "https://makersacademy.com", title: "Makers Academy")
    visit "/bookmarks"

    expect(page).to have_link("Makers Academy", href: "https://makersacademy.com")
    first(".bookmark").click_button "Delete"
    expect(current_path).to eq("/bookmarks")
    expect(page).not_to have_link("Makers Academy", href: "https://makersacademy.com")
  end
end
