require_relative 'text_module'

dream_sequence = TextModule::DREAM_SEQUENCE

puts dream_sequence

    mentor_choice = gets.to_s.strip    
case mentor_choice
    when   "a"
        puts "Gretchen bounds over to you energetically. 
    'What can I help you with...um...' 
    She seems to have forgotten your name. 
    What is your name?"
    name = gets.to_s.strip
    puts "'It's #{name},' you remind her.' 
    She smacks her forehead as if to say of course. 
    She leans in to help you with your code and you notice that the closer she gets, the more she wrinkles her nose.
    As the full strength of your B.O. hits Gretchen, she asks loud enough for the whole class to hear,
    'When was the last time you took a shower #{name}?!?'
    You wake up, covered in sweat, with the memory of the class's sniggers and judgemental stares playing repeatedly in your mind."
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
b. Get up!"

getup_or_snooze = gets.to_s.strip
case getup_or_snooze
when "a"
    puts "You hit snooze and managed another 10 minutes of beauty sleep. You get up without incident."
when "b"
    puts "Get out of bed in a rush, stubs toe. Waste time."
end

"There's no question that you need a shower but you're short on time.
Do you: 
a. Take a shower. There is no way you are leaving covered in sweat/piss.
b. You get dressed, take a 2 second shower i.e. deo and go."

took_a_shower
    "you accidentally left your bathroom door ajar in your attempts to save times. your dog jumps into the shower with you.
    you kick it out. your wet dog jumps onto the only clean clothes you had left on your floordrobe.
    you are left with a fluro jacket and booty shorts as your only clothing options today."

no_shower
 "no time to lose, you pray that your axe spray will mask all smells. you put on your only clean pair of jeans and a tshirt."

"as you go to leave your bedroom, your stomach protests and demands that you break your fast.
Do you:
a. Skip Breakfast. 
b. Cereal. 
c. Avocado Toast. Breakfast is the most important meal of the day, don'tchaknow."

skip_breakfast 
"YOU NEED TO GET TO CLASS YESTERDAY. You choose to ignore your hunger, you'll let future #{name} deal with the consequences."
#saves time

cereal_breakfast
"Fruit loops. It's healthy. Shut up."
#takes time

avocado_toast
"Gotta start the day right, breakfast is the most important meal dontchaknow. 
And toast is portable!" #doesn't take as much time as expected

"Your dog finds you just as you're about to head for the door. It whines. You haven't fed it. 
Do you:
a. feed it
b. promise to feed it later"

fed_dog
"How could you let it go hungry. Extra time spent and good karma gained!" 
#you will not miss your train even though you lost a bit of time

dont_feed_dog
"You try not to look into those puppy dog eyes. 
You say to yourself that you'll give it an extra large helping and a smackos tonight."
#bad karma gained means your train will be cancelled even though you "saved time" not feeding the dog. 

"You say goodbye to your good boy as you put your shoes on.
Do you: "
if_fed_dog
"a. Pick Flip Flops. The lack of laces will save you a precious few seconds. 
b. Pick Sneakers. Nike. Just do it."

if_dont_feed_dog
"Your hungry doggo decided to feed itself with your sneakers. You are left with only your flip flops to wear."

way_to_station
"You have three modes of transport to choose from to get to the train station."
if_sneakers 
"a. Car
b. Ride your bike.
"

if_flip_flops
"a. Car "

car
"You turn the key but the engine won't come to life. Your car battery is flat. 
Being a broke student, the thought of the cost of a replacement makes you cry. 
Take 5 minutes to recover. You decide to walk to the station."

bike
"You laugh at the stationary cars as you whizz your way past traffic. Parking your bike takes no time at all. "

at_the_station
"You arrive at the station and the smell of hot food and coffee wafts from the cafe nearby."
if_skipped_breakfast
"You are 200% transfixed by the siren song of bacon and eggs. You did skip breakfast after all. 
You join the queue for the cafe and pray that you won't miss your train. "
if_ate
"Your train and you arrived on time to catch each other. Like a romcom meetcute. But with trains and humans."
if_didnt_feed_dog
"Your train is cancelled. You get a strange feeling that this is because your dog is mad at you for leaving it hungry.
Your bored mind wonders about your dog's ability to control trains as you wait for the next service to arrive."

get_off_train
"You're finally at Southern Cross Station. Just a couple hundred more metres to class. Thank god.
You touch off and make quick work of the stairs and it's time to cross the road.
Do you: 
a. Jaywalk
b. Be a law-abiding citizen and wait patiently for the lights to change" 
if_sneakers
a = "You prance across the road with all the grace of a gazelle. No popos within sight too. How wonderful."
b = "You watch as the people jaywalk with no consequences. Goddammit."
if_flip_flops
a = "You do a quick jog across the road to avoid traffic but you forget, you're wearing flip flops! 
    Your inadequate footwear gets caught in the tram tracks and you fall on your face. "
b = "You watch as the people around you cross the road on a red light. 
    You see this poor sod get his flip flops caught in the tram tracks trying to quickly jaywalk across and face plants.
    You look down at your own flip flops on your feet... PHEW!"

crossed_roads
"You made it across. You see, walking towards you that 'friend' who loves to talk. 
Do you:
a. Be polite. Conversation doesn't have to be long.
b. EVASIVE MANOUVRES! EVASIVE MANOUVRES!!!" 
if_fluro_and_booty
a = "You're a bit hard to miss in bright flourescent clothing and tight tight booty shorts. 
    You managed not to come across as a douche nugget as you make short small talk before excusing yourself."
b = "You're a bit hard to miss in bright flourescent clothing and tight tight booty shorts.
    There was no way that they could miss you. LONG CONVERSATION ENSUES"

if_jeans_and_tshirt
a = "They start a long and one-sided conversation about their divorce, their digestive issues, and they think they might have alopecia.
    You severely regret having manners."
b = "Your jeans and a t-shirt urban camouflage allows you to blend into the crowd. 
    You stealthily avoid this time-sucking individual."

    