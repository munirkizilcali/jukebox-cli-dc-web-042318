require "pry"

songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

# def say_hello(name)
# "Hi, #{name}!"
# end

# puts "Enter your name:"
# users_name = gets.chomp

# puts say_hello(users_name)

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(array)
  array.each_with_index do |value, index|
    puts "#{index+1}. #{value}"
  end
end

def play(array)
  puts "Please enter a song name or number:"
  choice = gets.chomp
  if choice.to_i == 0 && choice != "0"
    if array.any? {|song| song == choice}
      puts "Playing #{choice}"
    else
      puts "Invalid input, please try again"
    end
  elsif choice.to_i < array.length
    puts "Playing #{array[choice.to_i-1]}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(array)
  help
  puts "Please enter a command:"
  choice = gets.chomp
  while choice != "exit" do
    case choice
    when "help"
      help
      puts "Please enter a command:"
      choice = gets.chomp
    when "list"
      list(array)
      puts "Please enter a command:"
      choice = gets.chomp
    when "play"
      play(array)
      choice = "help"
    else
      puts "Invalid input, please try again"
      puts "Please enter a command:"
      choice = gets.chomp
    end
  end
  exit_jukebox
end
