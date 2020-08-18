Client.destroy_all
Artist.destroy_all 

alex = Client.create(name: "Alex", location: "Bronx")
sarah = Client.create(name:"Sarah", location: "Bronx")

augusto = Artist.create(name: "Augusto", stye: "traditional", does_piercings?: true,  )
