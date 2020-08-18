Client.destroy_all
TattooShop.destroy_all
Artist.destroy_all 

alex = Client.create(name: "Alex", location: "Bronx")
sarahlee = Client.create(name:"Sarah Lee", location: "Bronx")
sarah = Client.create(name:"Sarah", location: "Brooklyn")
joe = Client.create(name:"Joe", location: "Queens")
paulo = Client.create(name:"Paulo", location: "Brooklyn")

brooklyntattoo = TattooShop.create(name: "Brooklyn Tattoo", location: "Brooklyn", average_review: 4, ambiance: "Casual", operational_hours: "10AM to 8PM", does_piercings?: true, recommended?: true)
bctattoo = TattooShop.create(name: "B.C. Tattoo", location: "Manhattan", average_review: 3, ambiance: "Cool", operational_hours: "12PM to 6PM", does_piercings?: false, recommended?: true)
gnostic = TattooShop.create(name: "Gnostic", location: "Queens", average_review: 3, ambiance: "Casual", operational_hours: "12PM to 5PM", does_piercings?: true, recommended?: false)
queenstattoo = TattooShop.create(name: "Queens Tattoo", location: "Queens", average_review: 4, ambiance: "Casual", operational_hours: "7PM to 7PM", does_piercings?: true, recommended?: true)
hustleparlor = TattooShop.create(name: "Hustle Parlor", location: "Brooklyn", average_review: 3, ambiance: "Upscale", operational_hours: "12PM to 12AM", does_piercings?: true, recommended?: true)
williamsburger = TattooShop.create(name: "Williamsburger", location: "Brooklyn", average_review: 2, ambiance: "Dirty", operational_hours: "12PM to 7PM", does_piercings?: false, recommended?: false)
paintshop = TattooShop.create(name: "Paint Shop", location: "Queens", average_review: 3, ambiance: "Cool", operational_hours: "10AM to 8PM", does_piercings?: true, recommended?: true)
tortoiseshell = TattooShop.create(name: "Tortoise Shell", location: "Manhattan", average_review: 4, ambiance: "Casual", operational_hours: "12PM to 8PM", does_piercings?: false, recommended?: true )

jack = Artist.create(name: "Jack", style: "traditional", does_piercings?: true, tattoo_shop: brooklyntattoo)
angela = Artist.create(name: "Angela", style: "black work", does_piercings?: false, tattoo_shop: bctattoo)
dj = Artist.create(name: "DJ", style: "new school", does_piercings?: false, tattoo_shop: gnostic)
omar = Artist.create(name: "Omar", style: "tribal", does_piercings?: false, tattoo_shop: queenstattoo)
tom = Artist.create(name: "Tom", style: "tribal", does_piercings?: true, tattoo_shop: hustleparlor)
charlotte = Artist.create(name: "Charlotte", style: "traditional", does_piercings?: true, tattoo_shop: paintshop)
kim = Artist.create(name: "Kim", style: "black work", does_piercings?: false, tattoo_shop: brooklyntattoo)
oliver = Artist.create(name: "Oliver", style: "new school", does_piercings?: true, tattoo_shop: gnostic)
ramon = Artist.create(name: "Ramon", style: "traditional", does_piercings?: false, tattoo_shop: williamsburger)
cynthia = Artist.create(name: "Cynthia", style: "tribal", does_piercings?: true, tattoo_shop: tortoiseshell)
