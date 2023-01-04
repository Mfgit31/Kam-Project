puts "destroying all"
Appointment.destroy_all
Housing.destroy_all
Customer.destroy_all


puts "making customers"

c1 = Customer.create( 
    name: "Harry Potter", 
    username: "HarryP", 
    password: "1231", 
    address: "7080 Parker Drive North Augusta, SC 29841", 
    email: "hpotter@example.com", 
    phone: 9876543210, 
    age: 30 )
c2 = Customer.create( 
    name: "Ron Weasley", 
    username: "RonW", 
    password: "1232", 
    address: "25 Fremont Court Campbell, CA 95008", 
    email: "rweasley@example.com", 
    phone: 7492730383, 
    age: 37 )
c3 = Customer.create( 
    name: "Hermione Granger", 
    username: "HermioneG", 
    password: "1233", 
    address: "520 3rd Dr. Providence, RI 02904", 
    email: "hgranger@example.com", 
    phone: 5473927483, 
    age: 28 )
c4 = Customer.create( 
    name: "Draco Malfoy", 
    username: "DracoM", 
    password: "1234", 
    address: "466 E. San Juan Street Trussville, AL 35173", 
    email: "dmalfoy@example.com", 
    phone: 4330273639, 
    age: 40 )
c5 = Customer.create( 
    name: "Sirius Black", 
    username: "SiriusB", 
    password: "1240", 
    address: "81 Hartford Dr. Vernon Hills, IL 60061", 
    email: "sblack@example.com", 
    phone: 8392484393, 
    age: 55 )
c6 = Customer.create( 
    name: "Albus Dumbledore", 
    username: "AlbusD", 
    password: "1235", 
    address: "9249 E. Forest Lane Naples, FL 34116", 
    email: "adumbledore@example.com", 
    phone: 1234567890, 
    age: 100 )
c7 = Customer.create( 
    name: "Luna Lovegood", 
    username: "LunaL", 
    password: "1236", 
    address: "9838 Golden Star Dr. Aberdeen, SD 57401", 
    email: "llovegood@example.com", 
    phone: 7306379202, 
    age: 20 )
c8 = Customer.create( 
    name: "Fred Weasley", 
    username: "FredW", 
    password: "1237", 
    address: "13 Atlantic St. Jonesboro, GA 30236", 
    email: "fweasley@example.com", 
    phone: 6490347493, 
    age: 19 )
c9 = Customer.create( 
    name: "Rubeus Hagrid", 
    username: "RubeusH", 
    password: "1238", 
    address: "17 Gates Ave. Utica, NY 13501", 
    email: "rhagrid@example.com", 
    phone: 2290635392, 
    age: 70 )
c10 = Customer.create( 
    name: "Severus Snape", 
    username: "SeverusS", 
    password: "1239", 
    address: "7998 Atlantic Lane Oklahoma City, OK 73112", 
    email: "ssnape@example.com", 
    phone: 9375483268, 
    age: 65 )

puts "making housings"
#Buy
h1 = Housing.create(
    address: "666 Happy Place, NY, NY 11003", 
    image: "https://www.trulia.com/pictures/thumbs_6/zillowstatic/fp/7ff59e25bfedd41b9dd55d6a343e4f2b-full.webp", 
    overview: "Beautiful Condo Apartment featuring 2 bedrooms and 1 1/2 baths.", 
    price: 150000,
    buy: true, rent: false, sold: false)
h2 = Housing.create(
    address: "16 Marion Avenue Staten Island, NY 12987", 
    image: "https://www.trulia.com/pictures/thumbs_6/zillowstatic/fp/6482dc4a7bc283d9497a1e75c8c3ec27-full.webp", 
    overview: "Legal 2-family semi-attached home featuring 3 bedrooms, 3 baths, and a large backyard. Needs TLC, drive-by only. Do not disturb the owner.", 
    price: 600000,
    buy: true, rent: false, sold: false )
h3 = Housing.create(
    address: "2 Tuckahoe Road, Yonkers, NY 10058", 
    image: "https://www.trulia.com/pictures/thumbs_5/zillowstatic/fp/78727c87c529ba7373f90b43696a7b7a-full.webp", 
    overview: "Impeccable! Live quite comfortably in this newly remodeled and spacious semi attached home. This three bedroom and three bath home is located on a private and peaceful cud-de-sac in the desirable neighborhood of Manor Heights. Extra large living room, full finished basement with entrance, brand new roof, plenty of parking spaces and much more. Five minutes to Verrazano Bridge and truly a must see!",
    price: 800000,
    buy: true, rent: false, sold: false )          
h4 = Housing.create(
    address: "123 ABC Street, Port Richmond, NY 10222", 
    image: "https://www.trulia.com/pictures/thumbs_6/zillowstatic/fp/74b9baa23196cb011a986790a0f4e58c-full.webp", 
    overview: "Wonderful 4 Bedroom home on great block in Port Richmond. First Floor features, living room, dining room, kitchen + 1/2 Bath. Second Floor features 4 Bedrooms, w/access to giant attic. Large Backyard. Perfect for entertaining.", 
    price: 98000,
    buy: true, rent: false, sold: false )       
h5 = Housing.create(
    address: "171-43 107th Street, Jamaica, NY 10458", 
    image: "https://image.shutterstock.com/image-photo/luxurious-new-construction-home-bellevue-260nw-555325381.jpg", 
    overview: "Space, style & modern luxury comes together at 171-43 107th Street! A Luxuriously renovated, fully detached LEGAL TWO Family setup as a 1 Family nestled on a beautiful tree lined street of Jamaica. Perfect opportunity for buyers looking for space. Open the door and enter an expansive sun drenched living/dining area which provides great space for entertaining. The stunning eat in granite kitchen is tucked away towards the rear of the property and features floor to ceiling custom cabinetry, adorned with full sized stainless steel appliances, and leads out into lush rear yard. Full bathroom on first floor as well. Up a flight of stairs 3 spacious bedrooms awaits you, each equipped with ample closet space.Down the hall a fully tiled bathroom is adorned with state of the art wall & floor tiles. The high ceiling full finished basement is equipped with both interior and exterior access, has a spacious bedroom & full bathroom.", 
    price: 1000000,
    buy: true, rent: false, sold: false )

h6 = Housing.create(
    address: "71 Regal Walk, Staten Island, NY 10303", 
    image: "https://www.trulia.com/pictures/thumbs_4/zillowstatic/fp/f47501dd14cdbb5e422a40b3a1fc34a5-full.webp", 
    overview: "This townhouse is located at 71 Regal Walk #108, Staten Island, NY. 71 Regal Walk #108 is in the Graniteville neighborhood in Staten Island, NY and in ZIP code 10303. It is currently for sale and was just listed on KAM today. This property is listed for $475,000. This property has 2 bedrooms, 2 bathrooms and approximately 1,609 sqft of floor space. This property has a lot size of 1230 sqft and was built in 1987.",
    price: 475000,
    buy: true, rent: false, sold: false )

h7 = Housing.create(
    address: "3080 Decatur Ave, Bronx, NY 10467", 
    image: "https://www.trulia.com/pictures/thumbs_6/zillowstatic/fp/a449657273e908855a1547496413d7f4-full.webp", 
    overview: " This single-family home is located at 3080 Decatur Ave, Bronx, NY 3080 Decatur Ave is in the Norwood neighborhood in Bronx, NY and in ZIP code 10467. It is currently for sale and was just listed on KAM today. This property is listed for $375,000. This property has 7 bedrooms, 3 bathrooms and approximately 4,008 sqft of floor space. This property has a lot size of 4007 sqft and was built in 1915.",
    price: 375000,
    buy: true, rent: false, sold: false )

h8 = Housing.create(
    address: "4518 Wilder Avenue Bronx, NY 10466", 
    image: "https://www.trulia.com/pictures/thumbs_6/zillowstatic/fp/bbec994f0905320132168164a42cb856-full.webp", 
    overview: "Welcome home to 4518 Wilder Ave. Located in a desirable neighborhood in Wakefield. This lovely home features 3 bedrooms, 2nd floor has one bedroom with an extra room, full bath, walk out basement and back yard. The Main level features a living room, dining area, indoor porch, kitchen and full bath. Great location! Walking distance to all public transportation (bus, subway, train, etc.) and major stores. Easy access to NYC and Westchester County.",
    price: 560000,
    buy: true, rent: false, sold: false )

h9 = Housing.create(
    address: "4501 Livingston Ave Bronx, NY 10471", 
    image: "https://www.trulia.com/pictures/thumbs_6/zillowstatic/fp/69bf3e807881ed08c0aeb15ea9006ca7-full.webp", 
    overview: "EXCLUSIVE NEW TO MARKET FIELDSTON HISTORIC DISTRICT
    Secluded Stone House w/ 2 Sunrooms + Front & Back Patios on a Tree-Lined Cul-de-Sac
    This 3-bedroom, 3.5-bath stone Craftsman-style house is nestled on a secluded hillside along the West 245th Street cul-de-sac between Fieldston Road and Livingston Avenue. It was built in 1926-28 and designed by master architect Julius Gregory.",
    price: 1995000,
    buy: true, rent: false, sold: false )

h10 = Housing.create(
    address: "318 80th St Brooklyn, NY 11209", 
    image: "https://www.trulia.com/pictures/thumbs_6/zillowstatic/fp/ff6e487ea6212e4cccc5390b63f9b9b4-full.webp", 
    overview: "Prime Bay Ridge - 6 Family Brick Semi-Detached, DELIVERED VACANT!!! Being Sold AS-IS, Large Lot 20 x 109.33, Building is 20 x 82, Zoning R4B. PRESENT ALL OFFERS!!! CALL for More Details.",
    price: 1399000,
    buy: true, rent: false, sold: false )

#Rentals
# h6 = Housing.create(
#     address: "234 Rockaway Beach, Queens, NY 11691", 
#     image: "https://www.trulia.com/pictures/thumbs_5/zillowstatic/fp/5c03e39a6223b64a934f8441dc056241-f_b.webp", 
#     overview: "Wavecrest Gardens is a beautifully landscaped, gated community, adjacent to Rockaway Beach. Featuring blossoming greenery and waterfront breezes, the community offers everyday conveniences including on-site laundry facilities, a fitness center, and on-site parking. Find yourself near multiple transit options, and a quick 45-minute commute to Manhattan on the A train. Sunlit apartments feature renovated kitchens, spacious layouts, and a range of floorplan options. Come see why life is better at the beach in Far Rockaway.", 
#     price: 3500, 
#     rent: true, buy: false, sold: false )
# h7 = Housing.create(
#     address: "15 Edgemere Blvd Elmont, NY 11003", 
#     image: "https://www.trulia.com/pictures/thumbs_6/zillowstatic/fp/59cd8ca85e10853784df7d0ab1a0e809-full.webp", 
#     overview: "BEAUTIFUL 3 BEDROOM 1 BATH APARTMENT ON THE 2ND FLOOR. CLOSE TO TRANSPORTATION AND SHOPS. ALL HARDWOOD FLOORING THROUGHOUT THE APT LOTS OF CLOSET SPACE EVERYONE WELCOME TO APPLY SMALL PETS OK LANDLORD WILL ACCEPT 3 BEDROOM VOUCHER! THIS IS A 3 BEDROOM APARTMENT",
#     price: 4500,
#     rent: true, buy: false, sold: false )

# h8 = Housing.create(
#     address: "456 Gracie Rock Blvd, Rockaway Beach, NY 11245", 
#     image: "https://www.trulia.com/pictures/thumbs_6/zillowstatic/fp/c6890af7d82a09ff246230c3179df409-full.webp", 
#     overview: "Fantastic Brand New 3 -Bedroom Rental Available  - The Unit Features Hardwood Floors Throughout, a Modern Kitchen, and Plenty of Windows that provide Natural Light. The Unit also Offers an Optional Use of the Large Backyard and Driveway for an Additional Cost - Perfect for Large Work Vehicles. Located Steps Away Transportation (A Train) And Beach W/ Miles Of Newly Constructed Boardwalk. Heat and cooking gas included in rent !", 
#     price: 3000,
#     rent: true, buy: false, sold: false )
# h9 = Housing.create(
#     address: "12 Beech Drive, Ocean Front, NY 23525",
#     image: "https://www.trulia.com/pictures/thumbs_6/zillowstatic/fp/89e44bd00613f125e183126fcecb0136-full.webp", 
#     overview: "Nice Ocean View. Nice Ocean View Apartment.", 
#     price: 4800,
#     rent: true, buy: false, sold: false )
# h10 = Housing.create(
#     address: "45 Beachwood Ave, Staten Island, NY 14590",
#     image: "https://www.trulia.com/pictures/thumbs_5/zillowstatic/fp/a808e82b2074f110cc07416e22f2874a-full.webp", 
#     overview: "Beautiful & Spacious, Waterfront 3 Bedroom, 2 Bathroom Apartment in Private home in Quiet Neighborhood of Bayswater (Far Rockaway) - Queens, NY.
#     Live right on the water with stunning views of the Bay from you own private Balcony.
#     2nd floor with separate entrance, DR, large LR with built in Bookcases, & BR's with large closets.", 
#     price: 6000,
#     rent: true, buy: false, sold: false )

# #Sold

# h11 = Housing.create(
#     address: "10-12 Beach 22nd Street, Far Rockaway, NY  15984", 
#     image: "https://www.trulia.com/pictures/thumbs_5/zillowstatic/fp/ce94deffabcaebab1d44b06a03645b8c-full.webp", 
#     overview: "This property is no longer available to rent or to buy on KAM This description is from December 14, 2022
#     Here it is! The chance to own instead of renting! Large studio located on the second floor of an ocean view building with a beautiful park/BEACH across the street! Hardwood floors throughout. Across the street from Rockaway Beach Boardwalk & O'Donahue Beach Park. Close to public transportation & stores. All info deemed accurate but must be verified by the buyer/buyer agent.
#     ", 
#     price: 450000,
#     sold: true, buy: false, rent: false )
# h12 = Housing.create(
#     address: "214 Mango Walk Blvd. Queen, NY 23456", 
#     image: "https://www.trulia.com/pictures/thumbs_6/zillowstatic/fp/3fdad8cfe735b184c8e36687f7d836b8-full.webp", 
#     overview: "This property is not currently for sale or for rent on KAM. The description and property data below may have been provided by a third party, the homeowner or public records.Great investment opportunity, 3 family all 2 bedrooms apartments, 1 bath. Sold as is with tenants with the potential of 1 unit being delivered vacant. Priced for quick sale!!!",
#     price: 559000,
#     sold: true, buy: false, rent: false )
# h13 = Housing.create(
#     address: "29-26 Martin Court, Queen NY 14987", 
#     image: "https://www.trulia.com/pictures/thumbs_6/zillowstatic/fp/009d1f04010dec1717a7fb8da157b470-full.webp", 
#     overview: "This property is not currently for sale or for rent on KAM. The description and property data below may have been provided by a third party, the homeowner or public records. For further Information/showings please call or text Rachel - 516-810-0881 or Morris - 646-463-0717  Space, style & modern luxury come together at 29-26 Martin Court! A newly renovated, move in ready two family tucked away on a quiet, tree lined street of Bayswater. 25x40 built two family sitting on a 30x105 lot featuring a wide driveway. This turn key move in ready townhouse provides the perfect opportunity for buyers looking for space, plus income generating rental property to assist with mortgage payments.", 
#     price: 700000,
#     sold: true, buy: false, rent: false )
# h14 = Housing.create(
#     address: "54 Country Road, Elmont, NY 10013", 
#     image: "https://www.trulia.com/pictures/thumbs_5/zillowstatic/fp/1a703be276901b7c6d760abd91300027-full.webp", 
#     overview: "This property is no longer available to rent or to buy on KAM. This description is from December 08, 2022. Centrally located spacious 3 bedroom , 1full bathroom and 1 half bathroom corner unit semi detached with nice side yard and backyard. Unit is being sold as is.",
#     price: "500000",
#     sold: true, buy: false, rent: false )
# h15 = Housing.create(
#     address: "123 Sesame Street Yonkers, NY 11234", 
#     image: "https://www.trulia.com/pictures/thumbs_6/zillowstatic/fp/08f6526a959ccd2baca2d122ab2e21a9-full.webp", 
#     overview: "This property is no longer available to rent or to buy.on KAM. This description is from December 22, 2022
#     3 BEDROOM TOWNHOUSE END UNIT FOUR BROTHERS COMMUNITY. FORMAL LIVING ROOM, FORMAL DINING ROOM, EAT IN KITCHEN, 2 BATHS, LAUNDRY ROOM, LARGE ATTIC, STORAGE, FRONT FENCED IN PATIO WITH TENNIS, POOL & PLAYGROUND, NEW HEAT & A/C UNITS. LEVEL 1: ENTRY, FORMAL LIVING ROOM, DINING ROOM, 1/2 BATH, EAT IN KITCHEN, LAUNDRY & UTILITY ROOM. LEVEL 2: 3 BEDROOMS, FULL BATH WITH SHOWER AND TUB. LEVEL 3: LARGE ATTIC STORAGE AND SKYLIGHT", 
#     price: 650000,
#     sold: true, buy: false, rent: false )


puts "making appointments"

Appointment.create(customer_id: c1.id, housing_id: h1.id, date: "01-07-2022", time: "1:00 PM")
Appointment.create(customer_id: c2.id, housing_id: h2.id, date: "01-14-2022", time: "2:00 PM")
Appointment.create(customer_id: c3.id, housing_id: h3.id, date: "01-17-2022", time: "3:30 PM")
Appointment.create(customer_id: c4.id, housing_id: h4.id, date: "02-27-2022", time: "5:00 PM")
Appointment.create(customer_id: c5.id, housing_id: h5.id, date: "02-28-2022", time: "6:00 PM")
Appointment.create(customer_id: c6.id, housing_id: h6.id, date: "03-07-2022", time: "5:00 PM")
Appointment.create(customer_id: c7.id, housing_id: h7.id, date: "03-07-2022", time: "7:00 PM")
Appointment.create(customer_id: c8.id, housing_id: h8.id, date: "03-17-2022", time: "4:30 PM")
Appointment.create(customer_id: c9.id, housing_id: h9.id, date: "03-21-2022", time: "6:10 PM")
Appointment.create(customer_id: c10.id, housing_id: h10.id, date: "03-24-2022", time: "6:30 PM")

puts "seeding completed"



        

            


