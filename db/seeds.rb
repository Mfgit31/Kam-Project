

puts "destroying all"

Housing.destroy_all
Customer.destroy_all
Appointment.destroy_all

puts "making customers"

20.times { Customer.create(name: Faker::Name.name,
            address: Faker::Address.full_address,
            email: "#{Faker::Internet.user_name}@customdomain.com",
            phone: Faker::PhoneNumber.phone_number,
            age: Faker::Date.birthday(min_age: 18, max_age:110))}

puts "making housings"

20.times { Housing.create(address: Faker::Address.full_address,
            # overview: Faker::Overview.overview,
            price: Faker::Commerce.price(range: 1.5..100.0, as_string:true),
            image: "housing#{rand(1..20)}")}

puts "making appointments"

20.times {Appointment.create(date: Faker::Date.between(from: '2023-01-02', to: '2024-01-01'),
            time: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now),

            #Foreign Keys

           customer: Customer.all.sample,
           housing: Housing.all.sample)}


puts "seeding completed"



        

            


