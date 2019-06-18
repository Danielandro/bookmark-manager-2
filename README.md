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
