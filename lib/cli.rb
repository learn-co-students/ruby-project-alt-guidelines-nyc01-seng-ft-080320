# prompt = TTY::Prompt.new

# choices = ["Manhattan", "Brooklyn", "Queens", "Bronx", "Staten Island"]
# prompt.select("Welcome to TattedPortal! What neighborhood are you looking for artists in?", choices)
# prompt.ask("Great! Can you give us your name? We use this information to start setting up your appointment.", required: true)


# #TODO

# # what are you interested in getting should equal to the description of appointment
require 'pry'
def artist_lookup
    prompt = TTY::Prompt.new
    # artistname = prompt.ask("What's their name?") #client is asked for the name, set to artistname
    #     if Artist.find_by name: artistname.to_s #if it exists in artist.all return the artist instance
           # "Great! We love them! Would you like to make an appointment" #another method furthering the appointment
        # else "We don't seem to know who that is..."
        #end
        artistname = prompt.ask("What's their name?") 
        if Artist.all.include?(artistname) #Artist.find_by name: 
            prompt.ask("Great! We love them! Would you like to make an appointment?")
        end
end

def look_for_artist_by_name
    prompt = TTY::Prompt.new
    answer = prompt.yes?("Cool. Do you know the name of the artist you want?")
    answer == "yes"
    artist_lookup
    # else answer == "No"
    #      "No worries – we'll help you start a new search."
    # end
end

def make_an_appointment
end

def change_appointment 
end


def welcoming_new_client
    prompt = TTY::Prompt.new
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






