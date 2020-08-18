Client.destroy_all
TattooShop.destroy_all

alex = Client.create(name: "Alex", location: "Bronx")
sarahlee = Client.create(name:"Sarah Lee", location: "Bronx")
sarah = Client.create(name:"Sarah", location: "Brooklyn")
joe = Client.create(name:"Joe", location: "Queens")
paulo = Client.create(name:"Paulo", location: "Brooklyn")

brooklyntattoo = TattooShop.create(name: "Brooklyn Tattoo", location: "Brooklyn", average_review: 4, ambiance: "Casual", operational_hours: "10AM to 8PM", does_piercings?: true, recommended?: true)
bctattoo = TattooShop.create(name: "B.C. Tattoo", location: "Manhattan", average_review: 3, ambiance: "Cool", operational_hours: "12PM to 6PM", does_piercings?: false, recommended?: true)
gnostic = TattooShop.create(name: "Gnostic", location: "Queens", average_review: 3, ambiance: "Casual", operational_hours: "12PM to 5PM", does_piercings?: true, recommended?: false)
queenstattoo = TattooShop.create(name: "Queens Tattoo", location: "Queens", average_review: 4, ambiance: "Casual", operational_hours: "7PM to 7PM", does_piercings?: true, recommended?: true)

