require 'pry'

# choices = ["Manhattan", "Brooklyn", "Queens", "Bronx", "Staten Island"]
# prompt.select("Welcome to TattedPortal! What neighborhood are you looking for artists in?", choices)
# prompt.ask("Great! Can you give us your name? We use this information to start setting up your appointment.", required: true)


# #TODO

# # what are you interested in getting should equal to the description of appointment
require 'pry'
def artist_lookup
    prompt = TTY::Prompt.new
        artistname = prompt.ask("What's their name?") do |q|
                         q.modify :capitalize
                     end
                     if Artist.all.find_by name: artistname
                        whats_their_name_answer = Artist.all.find_by name: artistname
                        #binding.pry
                        prompt.yes?("Great! We love #{artistname}! Would you like to make an appointment?")
                        #need info to make the rest of Appointment.create()
                        prompt.collect do
                           description =  key(:description).ask("What are you planning on getting?")
                           date = key(:date).ask("When were you planning on comming in? MMDDYYY")
                            Appointment.create(client: Client.all.last, date: date, description: description, artist: whats_their_name_answer, tattoo_shop: whats_their_name_answer.tattoo_shop )
                            prompt.ask("Thank you and youre all ready to go!")
                            binding.pry
                        end
                     else prompt.ask("We dont know 'em!")
                        help_search
                     end
#                     binding.pry
            # artists.name.include?(artistname.to_s)
            # end
                  
end

def help_search
    prompt = TTY::Prompt.new
    prompt.select("No worries – we'll help you start a new search. How would you like to filter your search?",["Style", "Location", "Also Does Piercings", "Ambiance"])
end

# def look_for_artist_by_name
#     prompt = TTY::Prompt.new
#     answer = prompt.yes?("Cool. Do you know the name of the artist you want?")
#     answer == "yes"
#         artist_lookup
#     answer == "No"
#          help_search
    
# end

#appointmentoptions = ["date", "time", "Describe whay you'd like done", ]
def make_an_appointment
    prompt = TTY::Prompt.new
        stylechosen = prompt.select("What kind of style are you looking for?", ["black work", "traditional", "new school", "tribal", "traditional", "no preference"])
        artiststring = []
        artistarray = []
        Artist.all.select do |artists| 
            if artists.style == stylechosen
                artiststring << "#{artists.name} – Does #{artists.style} at #{artists.tattoo_shop.name} in #{artists.tattoo_shop.location}" 
                artistarray << artists
                #binding.pry
            end
        end
        chosenartist = prompt.multi_select("Here are some experts in that style. Choose one to make an appointment!", artiststring) 
        artistarray

        
 
           
end

def change_appointment 
    prompt = TTY::Prompt.new

end


def welcoming_new_client
    prompt = TTY::Prompt.new
    newclient = prompt.ask("Welcome to TattedPortal! What's your name?", required: true)
    Client.create(name:newclient)
    puts "Great! Welcome #{newclient}."
    searchoptions = ["Look for an artist", "Make an appointment", "Change appointment"]
    selectedoption = prompt.select("What would you like to do?", searchoptions)
    if selectedoption == searchoptions[0] 
        artist_lookup
    elsif selectedoption == searchoptions[1]
        make_an_appointment 
    elsif selectedoption == searchoptions[2]
        change_appointment
    end
end






