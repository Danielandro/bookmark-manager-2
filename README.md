Bookmark Manager
----------------

Makers week 4 project - building a web app that aloows the user to store bookmarks to web pages

#### Instructions

Clone the repo 

Run `bundle` to install dependencies

Setup database:
1. Connect to psql
2. Create the database `CREATE DATABASE bookmark_manager`
3. Connect to the database `\c bookmark_manager`
4. Run the query in `db/migrations/01_create_bookmarks_table.sql`

Run `rackup` to start the app at `localhost:9292`

Setup test database:
1. Connect to psql
2. Create the database `CREATE DATABASE bookmark_manager_test`
3. Connect to the database `\c bookmark_manager_test`
4. Run the query in `db/migrations/01_create_bookmarks_table.sql`
5. Run the query in `db/migrations/02_add_title_to_bookmarks.sql`

#### User stories

As a user,
So I can save my favourite pages,
I want to add new bookmarks

