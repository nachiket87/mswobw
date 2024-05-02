# Minesweeper board generator

Assignment specs can be found here:  https://github.com/nachiket87/mswobw/blob/900dcfa7d0c5662272cd9f2f6431f9319d4de8d4/Technical%20Challenge%202023.pdf

### System Requirements

Ruby: 3.2.2 

Rails Version: 7.1.3.2

Database: Sqlite 3

### To Run in Development

1. Install the above dependencies
2. Clone this repository
3. run `bundle install`
4. `rails db:reset` OR `rails db:create, rails db:migrate`
5. rails server

### Other Notes

The app does not use any external libraries or styling intentionally in order to keep the frontend simple and reduce the burden of installation for the reviewer.
all css has been put into a single application.css file.

### Tests

I have attempted to provide as much test coverage as I felt necessary and the test suite can be run by running `rails test` in the app folder.

### Heroku requirements 

Since Heroku no longer offers a free tier. I have used a similar service called Flydotio to deploy a production app here: https://mswobw-winter-sun-2744.fly.dev/ (may take a few seconds to load up due to free tier)
flyctl cli tool was used for deployment.

### Thank you

I'd like to thank you for the opportunity to complete this take home assignment and look forward to hearing your feedback.

