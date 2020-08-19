require 'pry'# prompt = TTY::Prompt.new

# choices = ["Manhattan", "Brooklyn", "Queens", "Bronx", "Staten Island"]
# prompt.select("Welcome to TattedPortal! What neighborhood are you looking for artists in?", choices)
# prompt.ask("Great! Can you give us your name? We use this information to start setting up your appointment.", required: true)


# #TODO

# # what are you interested in getting should equal to the description of appointment
require 'pry'
def artist_lookup
    prompt = TTY::Prompt.new(track_history: false)
    # artistname = prompt.ask("What's their name?") #client is asked for the name, set to artistname
    #     if Artist.find_by name: artistname.to_s #if it exists in artist.all return the artist instance
           # "Great! We love them! Would you like to make an appointment" #another method furthering the appointment
        # else "We don't seem to know who that is..."
        #end  
        artistname = prompt.ask("What's their name?") do |q|
                         q.modify :capitalize
                     end
                     if Artist.all.find_by name: artistname.to_s
                        prompt.yes?("Great! We love #{artistname}! Would you like to make an appointment?")
                        make_an_appointment 
                     else prompt.ask("We dont know 'em!")
                     end
#                     binding.pry
            # artists.name.include?(artistname.to_s)
            # end
           
             
end

def look_for_artist_by_name
    prompt = TTY::Prompt.new(track_history: false)
    answer = prompt.yes?("Cool. Do you know the name of the artist you want?")
    answer == "yes"
    artist_lookup
    # else answer == "No"
    #      "No worries – we'll help you start a new search."
    # end
end

def make_an_appointment
    prompt = TTY::Prompt.new(track_history: false)
    #appointmentoptions = ["date", "time", "Describe whay you'd like done", ]
    apptdetails = prompt.collect do 
        key(:date).ask("What date would you like your appointment to be on?")
        
        key(:time).ask("What time would you like your appointment?")
       # specialties = ["black work", "traditional", "new school", "tribal", "traditional", "no preference"]
        key(:description).select("What kind of style are you looking for?", ["black work", "traditional", "new school", "tribal", "traditional", "no preference"])
           
    end
    if :description == "black work"
        Artist.all.map {|artists| artists.style == "black work"}
end
    apptdetails
    
end

def change_appointment 
    prompt = TTY::Prompt.new

end


def welcoming_new_client
    prompt = TTY::Prompt.new(track_history: false)
    newclient = prompt.ask("Welcome to TattedPortal! What's your name?", required: true)
    puts "Great! Welcome #{newclient}."
    searchoptions = ["Look for an artist", "Make an appointment", "Change appointment"]
    selectedoption = prompt.select("What would you like to do?", searchoptions)
    if selectedoption == searchoptions[0] 
        look_for_artist_by_name
    elsif selectedoption == searchoptions[1]
        make_an_appointment 
    elsif selectedoption == searchoptions[2]
        change_appointment
    end
end






