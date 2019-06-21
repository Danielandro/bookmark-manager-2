feature "Updating a bookmark" do
  scenario "User can update a bookmark" do    
    bookmark = Bookmark.create(url: 'http://www.testbookmark.com', title: 'Test Bookmark')
    # go to bookmarks page & check it has bookmark just created
    visit "/bookmarks"
    expect(page).to have_link("Test Bookmark", href: "http://www.testbookmark.com")

    # click edit button, check that it takes user to correct page
    first(".bookmark").click_button("Edit")
    expect(current_path).to eq "/bookmarks/#{bookmark.id}/edit"

    # fill in edit form with new data & submit
    fill_in("url", with: "http://www.nasa.gov")
    fill_in("title", with: "NASA")
    click_button("Submit")

    # take user to bookmarks - check old details are gone, new ones are there
    expect(current_path).to eq "/bookmarks"
    expect(page).to have_link("NASA", href: "http://www.nasa.gov")
    expect(page).not_to have_link("Test Bookmark", href:"http://www.testbookmark.com")
  end
end