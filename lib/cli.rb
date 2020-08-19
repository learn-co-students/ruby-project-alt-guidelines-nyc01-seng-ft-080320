prompt = TTY::Prompt.new

choices = %w(Manhattan Brooklyn Queens Bronx StatenIsland)
prompt.select("Welcome to TattedPortal! What neighborhood are you looking for artists in?", choices)
prompt.ask("Great! Can you give us your name? We use this information to start setting up your appointment.", required: true)
prompt.multiline("What are you interested in getting?")


# call ask with the question for simple input:
# prompt.ask("What is your name?", default: ENV["USER"])

# To confirm input use yes?:
# prompt.yes?("Do you like Ruby?")

# Asking question with list of options couldn't be easier using select like so:
# prompt.select("Choose your destiny?", %w(Scorpion Kano Jax))

# Also, asking multiple choice questions is a breeze with multi_select:
# choices = %w(vodka beer wine whisky bourbon)
# prompt.multi_select("Select drinks?", choices)

# To ask for a selection from enumerated list you can use enum_select:
# choices = %w(emacs nano vim)
# prompt.enum_select("Select an editor?", choices)