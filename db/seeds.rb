# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Fridge.destroy_all

ActiveRecord::Base.connection.tables.each do |t|
  ActiveRecord::Base.connection.reset_pk_sequence!(t)
end

fridge = Fridge.create(location: 'Kitchen', brand: 'Maytag', size: 80)
Food.create(fridge: fridge, name: 'Apple', weight: 4, is_vegan: true)
Food.create(fridge: fridge, name: 'Banana', weight: 3, is_vegan: true)
Food.create(fridge: fridge, name: 'Kiwi', weight: 9, is_vegan: true)
Drink.create(fridge: fridge, name: 'Brawndo', size: 12, booze: false)
Drink.create(fridge: fridge, name: 'Yeungling', size: 16, booze: true)

fridge = Fridge.create(location: 'Garage', brand: 'Kohler', size: 400)
Food.create(fridge: fridge, name: 'Chicken', weight: 4, is_vegan: false)
Food.create(fridge: fridge, name: 'Beef', weight: 3, is_vegan: false)
Food.create(fridge: fridge, name: 'Fish', weight: 9, is_vegan: false)
Drink.create(fridge: fridge, name: 'Apple Juice', size: 12, booze: false)
Drink.create(fridge: fridge, name: 'Yeungling', size: 16, booze: true)