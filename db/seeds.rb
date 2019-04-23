Puppy.destroy_all

20.times do
Puppy.create(name: Faker::Creature::Dog.name , breed: Faker::Creature::Dog.breed)
end







#destroy all the data