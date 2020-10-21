$prompt = TTY::Prompt.new(active_color: :blue)
$font = TTY::Font.new(:doom)
$pastel1 = Pastel.new

def welcome_screen
  system "clear"
  puts $pastel1.blue($font.write("Million - Air  Inc ."))
  p "Welcome on board, and Thank you for flying Million-Air!"
  
end

  def helpmenu
    # puts "What I can do for you #{user.name.partition(" ").first}?:\n
    # 1. Make an application.\n
    # 2. See what schools you can afford.\n
    # 3. See what degree you qualify for.\n
    # 4. Check application status.\n
    # 5. Exit.\n
    # Please enter a number:"
    pickme = [
      {name: 'Airport Lookup by City.', value: 1},
      {name: 'Airport Data by IATA', value: 2},
      {name: 'Frequent Flyer Medallion Information', value: 3},
      {name: 'Check application status.', value: 4},
      
    prompt = TTY::Prompt.new
    case prompt.select(" Please Make your Selection Bellow ", pickme)
    
  
    when 1
      system 'clear'
       look_up_by_city
      continue?
    
    when 2
      system 'clear'
      airport_by_iata
      continue?
    # when 3
    #   system 'clear'
    #   user.which_degree_do_you_qualify_for
    #   continue?(user)
    # when 4
    #   system 'clear'
    #   user.check_app_status
    #   continue?(user)
    # when 5
    #   system 'clear'
    #   puts "Thank you, goodbye."
    end
  end









  #   acct = $prompt.yes?($pastel1.cyan("Are you a Medallion Member?"))
#   if acct == false; new_user_info; elsif acct == true; user_login end
