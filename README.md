# Test for `active_model_serializers` issue 135

See [Various issues and questions when using inside a Rails engine](https://github.com/rails-api/active_model_serializers/issues/135).

Steps:

- Install the gems: `bundle install`
- Migrate the database: `rake db:migrate`
- Run the dummy app: `cd test/dummy` + `rails s`
- Check the presence of the message 'Disable root globally for in ArraySerializer' inside the console (file `config/initializers/active_model_serializers.rb`)
- Create an item: `http://localhost:3000/active_model_serializers_issue135/my_models`
- Check the JSON output: `http://localhost:3000/active_model_serializers_issue135/my_models.json`

Also:

- Check Git history for more details
- Check using Pry: `cd test\dummy` + `pry -r ./config/environment` + `ls ActiveModel::ArraySerializer`
- See that `require 'active_model_serializers'` is not required inside `lib/active_model_serializers_issue135/engine.rb`
