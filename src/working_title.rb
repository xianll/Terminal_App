require_relative 'story_text'
require_relative 'clock'
require_relative 'press_enter'

clock = Clock.new(8, 40)

StoryText.title
    press_enter

StoryText.dream_sequence(clock)
    clock.display
    press_enter

StoryText.wake_text(clock)
    clock.display
    press_enter

clothing = StoryText.shower_text(clock)
    clock.display
    press_enter

breakfast = StoryText.breakfast_text(clock)
    clock.display
    press_enter

dog_fed = StoryText.dog_text(clock)
    clock.display
    press_enter

footwear = StoryText.shoes_text(dog_fed, clock)
    clock.display
    press_enter

StoryText.station_transport(clock, footwear)
    clock.display
    press_enter

StoryText.station_text(breakfast, clock)
    clock.display
    press_enter

late = clock.late_status

StoryText.train_status(late, dog_fed, clock)
    clock.display
    press_enter

crossing = StoryText.crossing_street(footwear, clock)
    clock.display
    press_enter

StoryText.street_crossed(clothing, clock)
    clock.display
    press_enter
    
StoryText.room_door
    press_enter
    clock.display
    
# #TIME-SETUP
# time_hours = 6
# time_minutes = 30
# #(time being displayed eg.6.30)
# time_total = "the time is #{time_hours}.#{time_minutes} am"

# def add_time(minutes)
#     time_minutes =+ minutes
#     if time_minutes >= 60
#         time_hours =+ 1
#     end
# end
# #START






=begin
    mentor_choice = gets.to_s.strip    
case mentor_choice
    when   "a"
        puts mentor_a_part1
    name = gets.to_s.strip
        puts mentor_a_part2
    choice = "a"
    #SHOULD RESULT IN USER WANTING A SHOWER 

    when "b"
        puts "Matt walks over to you. 
    'What can I help you with...um...' 
    He seems to have forgotten your name. 
    What is your name?"
    name = gets.to_s.strip
    puts "'It's #{name},' you remind him.' 
    SOMETHING THAT MAKES MATT MAKE YOU WET THE BED"
    choice = "b"
    #SHOULD RESULT IN USER WANTING A SHOWER 

    when "c"
        puts "Harrison walks over to you. 
    'What can I help you with...um...' 
    He seems to have forgotten your name. 
    What is your name?"
    name = gets.to_s.strip
    puts "'It's #{name},' you remind him.' 
    HE SUGGESTS SOLVING THE PROBLEM TOGETHER, DREAM GOES ON."
    chocie = "c"
    #SHOULD RESULT IN USER WAKING UP LATE

    when "d"
        puts "Rueben walks over to you. 
    'What can I help you with...um...' 
    He seems to have forgotten your name. 
    What is your name?"
    name = gets.to_s.strip
    puts "'It's #{name},' you remind him.' 
    HE GIVES YOU A CRYPTIC ANSWER, DREAM GOES ON."
    choice = "d"
    #SHOULD RESULT IN USER WAKING UP LATE
end

puts "Your alarm stirs you from your sleep.
'Well that was a weird dream,' you thought. 
Do you: 
a. Hit snooze on the alarm.
b. Get up."

getup_or_snooze = gets.to_s.strip
case getup_or_snooze
when "a"
    puts "You hit snooze and managed another 10 minutes of beauty sleep. You get up without incident."
""
end
=end
