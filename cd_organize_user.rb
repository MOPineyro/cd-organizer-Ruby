require './lib/cd_organizer'

def main_menu
  puts "Press 'a' to add a new CD"
  puts "Press 'l' to list all CDs"
  puts "Press 's' to search all CDs"
  puts "Press 'x' to exit"
  main_choice = gets.chomp

  if main_choice == 'a'
    add_cd
  elsif main_choice == 'l'
    list_cds
  elsif main_choice == 's'
    search_cds
  elsif  main_choice =='x'
    puts "Goodbye"
  else
    puts "Not a valid option, please try again"
    main_menu
  end
end

def add_cd
  puts "Enter the Artist:"
  artist = gets.chomp
  puts "Enter the Album Name:"
  album = gets.chomp
  new_album = CD.create(artist,album)
  puts "CD has been entered"
  main_menu
end

def list_cds
  puts "Here is a list of all your CDs"
  CD.all.each do |x|
    puts "#{x.artist} - #{x.album}"
  end
  main_menu
end

def search_cds
  puts "Enter the artist or album you want to search for:"
  search_term = gets.chomp
  results = CD.search(search_term)
  puts "#{results.artist} - #{results.album}"
  main_menu
end

new_album1 = CD.create("Mike Jack","Bad")
new_album2 = CD.create("Mike Jack","Thriller")
new_album3 = CD.create("Madonna","Virgin")

main_menu






