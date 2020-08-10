puts "Destroy all restaurants"
Restaurant.destroy_all


puts "Create some restaurants"
amarelinho = Restaurant.new(
  name: "Amarelinho",
  address: "Gloria",
  description:
   "Is it cheap because it sucks, or does it suck because it's cheap?"
)
amarelinho.save

# This is the same as the above
Restaurant.create(
  name: "Verdinho",
  address: "Gloria",
  description:
   "It's somewhere that we go when amarelinho was closed by ANVISA(FDA?)"
)


puts "We're done"
puts "something very cool"