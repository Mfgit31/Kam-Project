

puts "destroying all"

Housing.destroy_all
Customer.destroy_all
Appointment.destroy_all

puts "making customers"

c1 = Customer.create( name: "Harry Potter", address: "7080 Parker Drive North Augusta, SC 29841", email: "hpotter@example.com", phone: 9876543210, age: 30 )
c2 = Customer.create( name: "Ron Weasley", address: "25 Fremont Court Campbell, CA 95008", email: "rweasley@example.com", phone: 7492730383, age: 37 )
c3 = Customer.create( name: "Hermione Granger", address: "520 3rd Dr. Providence, RI 02904", email: "hgranger@example.com", phone: 5473927483, age: 28 )
c4 = Customer.create( name: "Draco Malfoy", address: "466 E. San Juan Street Trussville, AL 35173", email: "dmalfoy@example.com", phone: 4330273639, age: 40 )
c5 = Customer.create( name: "Sirius Black", address: "81 Hartford Dr. Vernon Hills, IL 60061", email: "sblack@example.com", phone: 8392484393, age: 55 )
c6 = Customer.create( name: "Albus Dumbledore", address: "9249 E. Forest Lane Naples, FL 34116", email: "adumbledore@example.com", phone: 1234567890, age: 100 )
c7 = Customer.create( name: "Luna Lovegood", address: "9838 Golden Star Dr. Aberdeen, SD 57401", email: "llovegood@example.com", phone: 7306379202, age: 20 )
c8 = Customer.create( name: "Fred Weasley", address: "13 Atlantic St. Jonesboro, GA 30236", email: "fweasley@example.com", phone: 6490347493, age: 19 )
c9 = Customer.create( name: "Rubeus Hagrid", address: "17 Gates Ave. Utica, NY 13501", email: "rhagrid@example.com", phone: 2290635392, age: 70 )
c10 = Customer.create( name: "Severus Snape", address: "7998 Atlantic Lane Oklahoma City, OK 73112", email: "ssnape@example.com", phone: 9375483268, age: 65 )

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



        

            


