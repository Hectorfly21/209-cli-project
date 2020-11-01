class CLI
    def start
   puts "   ██╗    ██╗███████╗██╗      ██████╗ ██████╗ ███╗   ███╗███████╗    ████████╗ ██████╗      ██████╗██╗  ██╗██╗███╗   ██╗███████╗███████╗███████╗"  
   puts "   ██║    ██║██╔════╝██║     ██╔════╝██╔═══██╗████╗ ████║██╔════╝    ╚══██╔══╝██╔═══██╗    ██╔════╝██║  ██║██║████╗  ██║██╔════╝██╔════╝██╔════╝ "  
   puts "   ██║ █╗ ██║█████╗  ██║     ██║     ██║   ██║██╔████╔██║█████╗         ██║   ██║   ██║    ██║     ███████║██║██╔██╗ ██║█████╗  ███████╗█████╗  "    
   puts "   ██║███╗██║██╔══╝  ██║     ██║     ██║   ██║██║╚██╔╝██║██╔══╝         ██║   ██║   ██║    ██║     ██╔══██║██║██║╚██╗██║██╔══╝  ╚════██║██╔══╝  "    
   puts "   ╚███╔███╔╝███████╗███████╗╚██████╗╚██████╔╝██║ ╚═╝ ██║███████╗       ██║   ╚██████╔╝    ╚██████╗██║  ██║██║██║ ╚████║███████╗███████║███████╗ "   
   puts "    ╚══╝╚══╝ ╚══════╝╚══════╝ ╚═════╝ ╚═════╝ ╚═╝     ╚═╝╚══════╝       ╚═╝    ╚═════╝      ╚═════╝╚═╝  ╚═╝╚═╝╚═╝  ╚═══╝╚══════╝╚══════╝╚══════╝ "   
                                                                                                                                                      
   puts "               ███████╗ ██████╗ ██████╗ ██╗ █████╗  ██████╗     █████╗ ███╗   ██╗██╗███╗   ███╗ █████╗ ██╗     ███████╗██╗"                          
   puts "               ╚══███╔╝██╔═══██╗██╔══██╗██║██╔══██╗██╔════╝    ██╔══██╗████╗  ██║██║████╗ ████║██╔══██╗██║     ██╔════╝██║"                         
   puts "                 ███╔╝ ██║   ██║██║  ██║██║███████║██║         ███████║██╔██╗ ██║██║██╔████╔██║███████║██║     ███████╗██║"                        
   puts "                ███╔╝  ██║   ██║██║  ██║██║██╔══██║██║         ██╔══██║██║╚██╗██║██║██║╚██╔╝██║██╔══██║██║     ╚════██║╚═╝"                         
   puts "               ███████╗╚██████╔╝██████╔╝██║██║  ██║╚██████╗    ██║  ██║██║ ╚████║██║██║ ╚═╝ ██║██║  ██║███████╗███████║██╗"                          
   puts "               ╚══════╝ ╚═════╝ ╚═════╝ ╚═╝╚═╝  ╚═╝ ╚═════╝    ╚═╝  ╚═╝╚═╝  ╚═══╝╚═╝╚═╝     ╚═╝╚═╝  ╚═╝╚══════╝╚══════╝╚═╝"                         
     sleep(1)                                                                    
     puts "Welcome to Chinese Zodiac Animals!"
     puts "----------------------------------"
     sleep(0.5)
     puts "loading..."
     sleep(0.5)
     puts "Done!"
     Scraper.new.scrapes
     puts ""
     puts "Would you like to know about Chinese Zodiac Animals?"
     puts "Please type (yes/no)"
     user_input = gets.chomp
     if user_input == "Yes" || user_input == "yes"
     Zodiac.print_all_names_to_be_selected 
     puts "Enter a number 1-12:"
      zodiac_select = gets.chomp
      select_to_index = zodiac_select.to_i - 1
      while select_to_index > 11 || select_to_index < 0
        puts "Invaild Input!, please enter a number 1-12:"
        input = gets.chomp
        select_to_index = input.to_i - 1
      end
      Zodiac.all[select_to_index].print_all_descriptions
     else user_input == "No" || user_input == "no"
      puts "██╗  ██╗ █████╗ ██╗   ██╗███████╗     █████╗     ███╗   ██╗██╗ ██████╗███████╗    ██████╗  █████╗ ██╗   ██╗██╗"
      puts "██║  ██║██╔══██╗██║   ██║██╔════╝    ██╔══██╗    ████╗  ██║██║██╔════╝██╔════╝    ██╔══██╗██╔══██╗╚██╗ ██╔╝██║"
      puts "███████║███████║██║   ██║█████╗      ███████║    ██╔██╗ ██║██║██║     █████╗      ██║  ██║███████║ ╚████╔╝ ██║"
      puts "██╔══██║██╔══██║╚██╗ ██╔╝██╔══╝      ██╔══██║    ██║╚██╗██║██║██║     ██╔══╝      ██║  ██║██╔══██║  ╚██╔╝  ╚═╝"
      puts "██║  ██║██║  ██║ ╚████╔╝ ███████╗    ██║  ██║    ██║ ╚████║██║╚██████╗███████╗    ██████╔╝██║  ██║   ██║   ██╗"
      puts "╚═╝  ╚═╝╚═╝  ╚═╝  ╚═══╝  ╚══════╝    ╚═╝  ╚═╝    ╚═╝  ╚═══╝╚═╝ ╚═════╝╚══════╝    ╚═════╝ ╚═╝  ╚═╝   ╚═╝   ╚═╝"                                                                                
    end
  end
end