module StoryText

require 'catpix'
require 'word_wrap'
require_relative 'clock'
module_function


#IMAGE METHOD - displays image
def image(img)
    Catpix::print_image img,
    :limit_x => 0.5,
    :limit_y => 0,
    :center_x => true,
    :center_y => true,
    :bg => "black",
    :bg_fill => false,
    :resolution => "high"
end


#DREAM SEQUENCE - Body of text
def title
    puts image("./img/logo.jpg")
end

def dream_sequence(clock)
    system("clear")
    puts """
    Please type a, b, c, or d followed by return, for your response.

    You are stuck in a dream. 
    You have that...nagging feeling, you should be awake.
    You have school at 10am!

    You are in class and have been stuck on a bit of code for the last 15 minutes. 
    You raise your hand and ask help from: 

    a. Gretchen
    b. Matt
    c. Harrison
    d. Ruegen"""
        input = gets.chomp
        system("clear")
        if input == "a"
            puts image("./img/gretch.jpg")
            gretchen_text
        elsif input == "b"
            puts image("./img/matt.jpg")
            matt_text
        elsif input == "c"
            puts image("./img/harrison.jpg")
            harrison_text(clock)
        elsif input == "d"
            puts image("./img/ruegen.jpg")
            ruegen_text(clock)
        end 
end

        #CHOICES OF DREAM SEQUENCE - body of texts
        #CHOICE A

def gretchen_text
    puts """
    Gretchen bounds over to you energetically. 
    'What can I help you with...um...' 
    She seems to have forgotten your name. 

    What is your name?
    """
    name = gets.chomp
    system("clear")

    puts """
    It's #{name},' you remind her.
    
    She smacks her forehead as if to say 'of course.' 
    She leans in to help you with your code. 
    You notice that the closer she gets, the more she wrinkles her nose.
    As the full strength of your B.O. hits Gretchen, 
    she asks loud enough for the whole class to hear.

    'When was the last time you took a shower #{name}?!?'

    You begin to stir as you hear your alarm. You can feel you're covered in sweat 
    as the memory of the class's sniggers and judgemental stares plays in your mind.
                """
end


#CHOICE B

def matt_text
        
    puts """
    What can I help you with...um...' 
    He seems to have forgotten your name.
    What is your name?
    """

    name = gets.to_s.strip
    system("clear")
    
    puts """
    It's #{name}, you remind him.
    Oh, uhh, of course it is! Look, you want to just take a closer look at methods. 
    Everyone else is done already, why are you so far behind...uh?'
    You feel yourself go red as you realise he forgot your name again. 
    The feeling of defeat sinks in as you notice everyone is done.
    You take a sip of your drink. Suddenly, you need to pee!!!
    'It's #{name}' You mutter as you begin to stir, feeling like you wet the bed.
    """
end

        # #CHOICE C

def harrison_text(clock)
        
                puts """
    Harrison walks over to you. 
    'What can I help you with...um...' 
    He seems to have forgotten your name. 
    What is your name?
    """
            name = gets.to_s.strip
            system("clear")
    puts """
    'It's #{name},' you remind him.' 
    Oh.. Sorry! 
    'Theres no 'I' in team! Let's work this one out together!'
    Harrison sits down next to you and you continue going through the code.
    You stir, feeling heavy from falling deeper into sleep.
    """
clock.add_time(15)
end

        #CHOICE D

def ruegen_text(clock)
        
    puts """
    Rueben walks over to you. 
    'What can I help you with...um...' 
    He seems to have forgotten your name. 
    What is your name?
    """
    
    name = gets.to_s.strip
    system("clear")

    puts """
    'It's #{name},' you remind him.' 
    
    'I'm just going to call you Alice.
    What you need to do, is think of it like a Pie Factory, yeah?
    Is that cool?'
    He strolls away, leaving you more confused than before.
    You stare your screen, feeling like you better get to it.
    You continue trying to code and fall deeper into sleep.
    """
clock.add_time(15)
end


        
    #WAKEUP METHODS
def wake_text(clock)
        
    puts """
    Your alarm pulls you from your sleep.
    'Well that was a weird dream,' you thought.
    Do you: 

    a. Hit snooze on the alarm.
    b. Get up!
    """

    input = gets.to_s.strip
    system("clear")

        if input == "a" #WAKEUP CHOICE A
        puts """
        You hit snooze and managed another 10 minutes of beauty sleep. 
        You get up without incident.
        """
        clock.add_time(10)

    else input == "b" #WAKEUP CHOICE B
        system("clear")
        puts """
        You kick the covers off and get out of bed. 
        As you navigate through the laundry piles on the floor, you manage to stub your toe hard. 
        You spend the next 10 minutes nursing your injury.
        """
    clock.add_time(10)
    end
end

#SHOWER SEQUENCE
def shower_text(clock)
    
    puts """
    There's no question that you need a shower but you're short on time.
    Do you: 

    a. Take a shower. Cleanliness is next to godliness.
    b. Get Dressed and opt for the shower in a can, i.e. deo and go!
    """

    input = gets.to_s.strip
    system("clear")

if input == "a"
    puts image("./img/dog.jpg")

    puts """
    You accidentally left your bathroom door ajar in your attempts to save times. 
    Your dog decides to jump in and start chomping at the water.        
    You slip as you try to push the dog out of the bathroom.
    The wet dog jumps onto the only clean clothes you had left on your floordrobe.
        
    Unfortunately, the only clothing options that are left are;
    A fluro jacket and booty shorts... from that 80's party where you went as one of the Village People.

    Great.
    """
    clock.add_time(25)
    return "fluro"
    
elsif input == "b"
    puts """
    No time to lose! 
    You pray that your axe spray will mask all smells. 
    You put on your only clean pair of jeans and a tshirt.
    """
    clock.add_time(10)
    return "jeans"
    end
end

#PICKING BREAKFAST OPTIONS
def breakfast_text(clock)
    
    puts """
    As you go to leave your bedroom, you hear a low, angry growl.
    ...
    Your stomach protests, demanding that you break your fast.
    Breakfast is the most important meal of the day, don'tchaknow!
    Do you:

    a. Skip Breakfast. 
    b. Pour some cereal. 
    c. Make avocado toast. 
    """

    input = gets.to_s.strip
    system("clear")

if input == "a"

    puts """
    YOU NEED TO GET TO CLASS YESTERDAY!
    You choose to ignore your hunger. 
    Letting future You deal with the consequences.
    """
    return false

elsif input == "b"
    puts image("./img/fruitloops.jpg")
    puts """
    Fruit loops. It's healthy. Shut up! 
    """
    clock.add_time(15)
    return true

elsif input == "c"
    puts image("./img/avocado.jpg")
    puts """
    Gotta start the day right, and toast is portable!
    """
    clock.add_time(10)
    return true
    end
end

#INTERACTION WITH THE DOG - DOG BLOCK OF TEXT AND CHOICES.
def dog_text(clock)
    puts image("./img/dog_door.jpg")
    puts """
    Your dog finds you just as you're about to head for the door. It whines. You haven't fed it. 
    Do you:

    a. Feed it.
    b. Promise to feed it later.
    """
    input = gets.to_s.strip
    system("clear")

    if input == "a"
        puts """
        You made a commitment to be a good dog parent and good dog parents don't let their dogs go hungry! 
        """
        clock.add_time(12)
        return true
        
    elsif input == "b"
        puts """
        You try not to look into those puppy dog eyes. 
        You say to yourself that you'll give it an extra large helping and a smackos tonight
        ...and lots and lots of belly rubs.
            """
        return false
    end
end

#PICKING YOUR SHOES - CHOICES WILL DEPEND ON IF THE DOG IS FED.
def shoes_text(dog_fed, clock)
    
    puts """
        You say goodbye to your good boy as you go to put your shoes on.
        """
if dog_fed
    puts image("./img/both_shoes.jpg")
    puts """
    Do you:
        
    a. Pick Flip Flops. The lack of laces will save you a precious few seconds. 
    b. Pick Sneakers. Nike. Just do it!
    """
    input = gets.to_s.strip
    system("clear")

    if input == "a"
        puts """
        You quickly whip on those bikinis for your feet! 
        """
        return "flip flops"
        
    elsif input == "b"
        puts """
        It takes a minute but you put on the comfy-est pair of Nike Cortez sneakers. 
        """
        clock.add_time(1)
        return "sneakers"
    end
    
else
    system("clear")
    puts image("./img/shoe_torn.jpg")
    puts """
    You look for your sneakers and find only the left shoe.
    The dog has taken his hunger pangs out on the right half!
    Teach you to neglect your pet. 

    'I'll deal with this later!' you scolded, grabbing the only pair of shoes left;
    A pair of red Flip Flops.
    """

    clock.add_time(5)
    return "flip flops"

    end
end

#TRANSPORT TO THE STATION
def station_transport(clock, footwear)
    
    puts """
    You consider the best way to get to the train station.
    It's not very far.
    But it's peak hour, the traffic's probably bad.
    """
        if footwear == "sneakers"
        puts """
    Do you:

    a. Take the car, traffic be damned! 
    b. Ride the bike! Work those calves!

 """
input = gets.to_s.strip
system("clear")
            if input == "a"
            puts """
You turn the key but the engine won't come to life. Your car battery is flat. 
Being a broke student, the thought of the cost of a replacement makes you cry.

Take 10 minutes to recover. You decide to walk to the station. 
"""
clock.add_time(10)

           elsif input == "b"
           puts """
            You laugh at the stationary cars as you whizz your way past traffic. 
            Parking and locking your bike at the pole takes no time at all.
            """
            clock.add_time(5)
            end
    else
    puts """
    You're wearing flip flops. Recalling a couple of bad memories, you decide against taking the bike.
    You decide to take the car.

    You turn the key but the engine won't come to life. Your car battery is flat. 
    Being a broke student, the thought of the cost of a replacement makes you cry.

    Take 5 minutes to recover. You decide to walk to the station. 
    """
    clock.add_time(10)
    end
end

def station_text(breakfast, clock)

    puts """
You arrive at the station!
The smell of hot food and coffee is wafting over from the cafe nearby.
"""
puts "press 'enter' to continue...".colorize(:red)
gets.chomp
system("clear")
        
    if !breakfast
        puts """
You are 200% transfixed by the siren song of bacon and eggs.
You did skip breakfast after all!
You join the queue of 4, praying that you don't miss your train.
"""
puts "press 'enter' to continue..."
gets.chomp
system("clear")

puts """
The first 3 breeze through. You begin to feel like you might be in luck. 
The last custom and the clerk begin to argue over the amout of change.

After what feels like forever, you order a bacon and eggs roll.

With roll in hand, you touch on and walk onto the platform. 
"""
clock.add_time(15)

    else
        puts """
        Bolstered by having breakfast in your belly,
        you draw on your willpower and ignore the wonderful smells coming from the cafe.
        You head straight for the platform.
        """
        clock.add_time(2)
    end
end


#CATCHING THE TRAIN 
def train_status(late, dog_fed, clock)
    if late && dog_fed
    puts image("./img/doors_closed.jpg")
    puts """
    You arrive to see your train starting to move. You missed your train!

    'The next train to depart from Platform 1 will arrive in 15 minutes.' you hear over the PA.
    You take a seat, annoyed, and mull over what will happen if you're late again. 
    'At least you'll get a seat on the train!', you try consoling yourself.
    """
    clock.add_time(15)
    elsif !late && !dog_fed
    image("./img/train_gone.jpg")
    puts """
    You arrive on the platform, to see that karma has come full circle.

    'The next service to Southern Cross Station has been cancelled.
    The following service will depart from Platform 1 in 15 minutes.'

    You get a strange feeling like this was karma for not feeding your dog.
    """
    clock.add_time(15)
    else
    puts image("./img/doors_open.jpg")
    puts """
    You step onto the platform just as your train arrives. 
    What a coinkidink!
    """
    end
end

def crossing_street(footwear, clock)
    image("./img/southern_cross.jpg")
    puts """
    You're finally at Southern Cross Station. Just a couple hundred more metres to class.
    You touch off and make quick work of the stairs and it's time to cross the road.
    Do you:
    a. Jaywalk
    b. Be a law-abiding citizen and wait patiently for the lights to change
    """
    input = gets.to_s.strip
    system("clear")
    if footwear == "sneakers" && input == "a"
        puts """
        You prance across the road with all the grace of a gazelle. 
        No popos within sight too. 
        9/10 would jaywalk again.
    """
    clock.add_time(5)
    elsif footwear == "sneakers" && input == "b"
        puts """
        You watch jealously as the people jaywalk with no consequences.
        """
        clock.add_time(10)
    elsif footwear == "flip flops" && input == "a"
        puts """
        You do a quick jog across the road to avoid traffic but you forget, you're wearing flip flops!
        Your inadequate footwear gets caught in the tram tracks and you fall on your face.
        """
        clock.add_time(10)
    else footwear == "flip flops" && input == "b"
        puts """
        You watch as the people around you cross the road on a red light.
        You see this poor sod get his flip flops caught in the tram tracks 
        trying to quickly jaywalk across and face plants.
        You look down at your own flip flops on your feet... PHEW!
    """
    clock.add_time(10)
    end
end



def street_crossed(clothing, clock)
    puts """
    You made it across. You see, walking towards you that 'friend' who loves to talk.
    Do you:
    
    a. Polite conversation doesn't have to be long.
    b. EVASIVE MANEUVERS! EVASIVE MANEUVERS!!!
    """
    input = gets.to_s.strip
    system("clear")
    if input == "a" && clothing == "fluro"
        puts """
        You're a bit hard to miss in bright flourescent clothing and tight tight booty shorts.
        You managed not to come across as a douche nugget as you make short small talk before excusing yourself.
        """
        clock.add_time(10)
    elsif input == "b" && clothing == "fluro"
        puts """
        You try to hide behind your bright flourescent clothing and avoid eye contact but fail miserably.
        'Oh my god! It's been so long!' your friend said excitedly.
        They proceed to tell you about their impending divorce and how they think the resulting anxiety is making them flatulent.
        You try to exit the conversation at many points to no avail.
        You've probably been talking for 15 minutes now...
        """
        clock.add_time(15)
    elsif input == "a" && clothing == "jeans"
        puts """
        They start a long and one-sided conversation about their divorce, their digestive issues, and their alopecia.
        You severely regret having manners.
        """
        clock.add_time(25)
    else input == "b" && clothing == "jeans"
        puts """
        Your jeans and a t-shirt urban camouflage allows you to blend into the crowd.
        You stealthily avoid this individual. 
        """
        clock.add_time(5)
    end


end
def room_door
    puts """
You arrive at 120 Spencer Street and ride the elevator to floor 13.
Standing at the door to the Coder Academy classroom, you can recall Ruegen talking.
'Class starts at 10:00 am. Not 10.20, not 10.05!'
You look down at your watch, questioning whether you're late....


"""
end
end
