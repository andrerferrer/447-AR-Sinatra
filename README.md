# Usage
```
cd ~/code/$USER
git clone git@github.com:andrerferrer/447-AR-Sinatra.git
cd 447-AR-Sinatra
bundle install
stt # Open this folder in Sublime Text
rake db:create
rake db:migrate
rake db:seed
ruby app.rb
```

To launch a Sinatra server just run the `app.rb` and open a web browser at [http://localhost:4567](http://localhost:4567):

## Here are some commands you can run in the console:

```ruby
restaurant = Restaurant.new(name: "La Tour d'Argent", address: "15 Quai de la Tournelle, 75005 Paris")

# Has this been saved?
restaurant.persisted?
# => false

restaurant.id
# => nil

restaurant.save
restaurant.id
# => 1
```

Good Luck, Have Fun!
(and don't kill ladybugs. Come on! They're cute!)
