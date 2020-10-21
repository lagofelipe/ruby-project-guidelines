$prompt = TTY::Prompt.new(active_color: :blue)
$font = TTY::Font.new(:doom)
$pastel1 = Pastel.new
prompt = TTY::Prompt.new


def welcome_screen
  system "clear"
  puts $pastel1.blue($font.write("Million - Air  Inc ."))
  p "Welcome on board, and Thank you for flying Million-Air!"
  
#   choices = %w(vodka beer wine whisky bourbon)
# prompt.multi_select("Select drinks?", choices)



prompt.yes?("Do you like Ruby?")

# rompt.select("Please make your Bellow") do |menu|
#         menu.default 3
      
#         menu.choice "Airport Finder by City", 1
#         menu.choice "Airport Information by IATA", 2
#         menu.choice "Medallion and Frequent Flyer Information", 3
      
  end









  #   acct = $prompt.yes?($pastel1.cyan("Are you a Medallion Member?"))
#   if acct == false; new_user_info; elsif acct == true; user_login end
