>Studii

>created by Caroline Chen

An app for collecting and organizing bookmarks for all the resources one might need for studying web development.


> Technologies Used:

This app was built using Ruby on Rails.


> Approach Taken:

I drew inspiration from my Chrome Bookmarks list, Pinterest, and Slack to determine features I'd want my application to have.  I mapped my ERD illustrating the many-to-many relationship between "boards" and "posts" (with "listings" joining the two) and a one-to-many relationship between "posts" and "notes".  After I completed full CRUD functions, I added Devise and tinkered with user authentication/rights.

> Features:

Users can view, create, edit, and delete Boards, which correspond to categories of Posts.  On each Board, users can view, create, edit, and delete Posts.  On each Post page, users can access a link to go to that post's url, and view, create, edit, and delete Notes for the post.  Users can create private Boards or Posts.  Users can view other users' Boards, Posts, and Notes, but they can not create, edit, or delete them (they can add notes.)


> Installation Instructions:

Requires Rails.  After cloning down repo, run $ bundle install, then $ rails db:drop db:create db:migrate db:seed.

> Next Steps:

Enable editing of the Board that a Post belongs to.  Allow users to copy other users's Boards/Posts to own account.

