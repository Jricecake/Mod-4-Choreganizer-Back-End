# Choreganizer backend API

Choreganizer is a simple solution to the delegation of household chores to you and your housemates. A user can create a house, add members, create chores, and distribute and track those chores in one convenient place. The backend API uses Ruby on Rails with a Postgresql database. The frontend repo can be found [here](https://github.com/nk2303/chore-app-frontend) and you can visit the site [here](https://choreganizer-f0c34.web.app/).

## Version

Ruby 2.6.1

## Installation

To run locally, download or clone the repository, then run 'bundle install' to install required gems.
```
bundle install
```
To create the database, install Postgresql and run 'rails db:create'
```
rails db:create
```
Run migrations to create the tables:
```
rails db:migrate
```

You will need to set up your own configuration for a secret to use when encrypting JSON web tokens. Create and configure your secret, then replace `Rails.application.secret_key_base` at lines 5 and 18 in `/app/controllers/application_controller.rb` with your secret.

Run 'rails s' to start a local server:
```
rails s
```
Navigate to your locally hosted client to start Choreganizing!

## Authors

Built by [Jonny Riecke](https://github.com/Jricecake), [Ngan Kim Khong](https://github.com/nk2303), and [Diana Wendt](https://github.com/dianakw8591).

## Contributing

Contributions are welcome. Feel free to open a pull request or branch from this project.

## License

[MIT](https://choosealicense.com/licenses/mit/)


