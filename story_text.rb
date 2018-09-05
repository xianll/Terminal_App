module StoryText
    require 'catpix'
    module_function
    #IMAGE METHOD - displays image
        def image(img)
        Catpix::print_image img,
        :w => -0.5,
        :h => -0.5,
        :limit_x => 1.0,
        :limit_y => 0,
        :center_x => true,
        :center_y => true,
        :bg => "black",
        :bg_fill => false,
        :resolution => "high"
        end
    # dog_fed = false
    # breakfast = false
    #DREAM SEQUENCE - Body of text
        def dream_sequence(clock)
            puts """
        Please type a, b, c, or d followed by return, for your response.
    
    
        You are in class and have been stuck on a bit of code for the last 15 minutes. 
        You raise your hand and ask help from: 
        a. Gretchen
        b. Matt
        c. Harrison
        d. Ruegen"""
            input = gets.chomp
            if input == "a"
                puts image("gretch.jpg")
                gretchen_text
            elsif input == "b"
                matt_text
            elsif input == "c"
                harrison_text(clock)
            elsif input == "d"
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
        puts """
        'It's #{name},' you remind him.' 
        Oh.. Sorry! 
        'Theres no 'I' in team! Let's work this one out together!'
        Harrison sits down next to you and you go through the code together.
        You stir, feeling heavy from falling deeper into sleep.
        """
        clock.add_time(15)
        end
    
            #CHOICE D
    
        def ruegen_text
                    puts """
        Rueben walks over to you. 
        'What can I help you with...um...' 
        He seems to have forgotten your name. 
        What is your name?
        """
        name = gets.to_s.strip
        puts """
        'It's #{name},' you remind him.' 
        
        'I'm just going to call you Alice.
        What you need to do, is think of it like a Pie Factory, yeah?
        Is that cool?'

        He strolls away, leaving you more confused than before.
        You're left staring at your screen, feeling like you better get to it.
        You continue trying to code and fall deeper into sleep.
        """
        end
    
    
            
        #WAKEUP METHODS
        def wake_text
            puts """
            Your alarm pulls you from your sleep.
            'Well that was a weird dream,' you thought absentmindedly.
            Do you: 
    
            a. Hit snooze on the alarm.
            b. Get up!
        """
            input = gets.to_s.strip
            if input == "a" #WAKEUP CHOICE A
                puts """
            You hit snooze and managed another 10 minutes of beauty sleep. 
            You get up without incident.
                """
            elsif input == "b" #WAKEUP CHOICE B
                puts """
            You kick the covers off and get out of bed. 
            Navigating through the laundry piles on the floor you manage to stub your toe hard. 
            You spend the next 10 minutes nursing your injury.
            """
            end
        end
    
        #SHOWER SEQUENCE
        def shower_text
            puts """
            There's no question that you need a shower but you're short on time.
            
            Do you: 
    
            a. Take one anyway. Cleanliness is next to godliness.
            b. Skip the shower and get dressed. Deo and go!
            """
            input = gets.to_s.strip
    
            if input == "a"
            puts """
            You accidentally left your bathroom door ajar in your attempts to save time. 
            Your dog decides to jump in and starts chomping at the water.        
            You slip as you try to push the dog out of the bathroom.
            The wet dog jumps onto the only clean clothes you had left on your floordrobe.
                
            Unfortunately, the only clothing options that are left are;
            A fluro jacket and booty shorts, from that 80's party where you went as one of the Village People.
    
            Great.
                """
            elsif input == "b"
            puts """
            No time to lose! You take a shower in a can. 
            You pray that your axe spray will mask all smells. 
            You put on your only clean pair of jeans and a tshirt.
            """
            end
        end
    
    #PICKING BREAKFAST OPTIONS
    def breakfast_text
        puts """
        As you go to leave your bedroom, you hear a low, threatening growl.
        ...
        Your stomach protests, demanding that you break your fast.
        Breakfast is the most important meal of the day, don'tchaknow!
        Do you:
    
        a. Skip Breakfast. 
        b. Pour some cereal. 
        c. Make avocado toast. 
    
    """
    input = gets.to_s.strip
    
        if input == "a"
        puts """
        YOU NEED TO GET TO CLASS YESTERDAY!
        You choose to ignore your hunger. 
        Letting future #{name} deal with the consequences.
        """
        breakfast = false
    
        elsif input == "b"
        puts """
        Fruit loops. It's healthy. Shut up!
        """
        elsif input == "c"
        puts """
        Gotta start the day right, and toast is portable!
        """
        end
    end
    
    #INTERACTION WITH THE DOG - DOG BLOCK OF TEXT AND CHOICES.
    def dog_text
        puts """
        Your dog finds you just as you're about to head for the door. It whines. You haven't fed it. 
        Do you:
    
        a. Feed it.
        b. Promise to feed it later.
        """
        input = gets.to_s.strip
        if input == "a"
            puts """
        You couldn't let it go hungry! 
            """
        return true
            elsif input == "b"
            puts """
        You try not to look into those puppy dog eyes. 
        You say to yourself that you'll give it an extra large helping and a smackos tonight.
        Alright, fine. 
        And a belly rub.
            """
        return false
        end
    end
    
    #PICKING YOUR SHOES - CHOICES WILL DEPEND ON IF THE DOG IS FED.
    def shoes_text(dog_fed)
        puts """
        You say goodbye to your good boy as you go to put your shoes on.
        """
    if dog_fed
       puts """
        Do you:
        
        a. Pick Flip Flops. The lack of laces will save you a precious few seconds. 
        b. Pick Sneakers. Nike. Just do it!
     """
    input = gets.to_s.strip
            if input == "a"
            puts """
        You very quickly whip on those flip flops! 
    """
            elsif input == "b"
            puts """
        You slip on your most comfy pair of sneakers, Nike Cortez. 
    """
    return "sneakers"
            end
    else
        puts """
        You look for your sneakers and only find the left shoe.
        The dog has taken his hunger pangs out on the right half!
        Teach you to neglect your pet. 
    
        'I'll deal with this later!' you scolded, grabbing the only pair of shoes left;
        A pair of red Flip Flops.
        """
        return "flip flops"
    end
    end
    
    #GETTING TO THE STATION
    def station_transport(footwear)
        puts """
        You consider the best way to get to the train station.
        It's not very far.
        But it's peak hour, the traffic's probably bad.
        
    """
            if footwear == "sneakers"
            puts """
        Do you:
    
        a. Take the car, fight the traffic! 
        b. Ride the bike! work those calves!
    
     """
    input = gets.to_s.strip
                if input == "a"
                puts """
    You turn the key but the engine won't come to life. Your car battery is flat. 
    Being a broke student, the thought of the cost of a replacement makes you cry.
    
    Take 5 minutes to recover. You decide to walk to the station. 
    """
               elsif input == "b"
               puts """
    You laugh at the stationary cars as you whizz your way past traffic. 
    Parking your bike takes no time at all.
    Locking it to the pole. 
    """
                end
        else
        puts """
    You're wearing flip flops. Recalling a couple of bad memories, the bike is not an option.
    You decide to take the Car.
    
    You turn the key but the engine won't come to life. Your car battery is flat. 
    Being a broke student, the thought of the cost of a replacement makes you cry.
    
    Take 5 minutes to recover. You decide to walk to the station. 
        """
        end
    end
    
    def station_text
        puts """
    You arrive at the station!
    The smell of hot food and coffee is wafting over from the cafe nearby.
    
    """
        if !breakfast
            puts """
    You are 200% transfixed by the siren song of bacon and eggs.
    You did skip breakfast after all.
    You join the queue of 4, praying that you don't miss your train.
    
    The first 3 breeze through. You begin to feel like you might be in luck. 
    The last customer and the clerk begin to argue over the amount of change.
    
    After a short wait, you order your bacon and eggs roll.
    With roll in hand, you turn to face the platform. 
    
    """
    
        else
            puts """
    Bolstered by having breakfast in your belly,
    you draw on your willpower and ignore the wonderful smells coming from the cafe.
    You head straight for the platform.
    """
    
    #CATCHING THE TRAIN 
    if late
    puts """
    Only to see your train starting to move. You missed your train!
    
    'The next train departing in, 15 minutes.' you hear over the PA.
    You sit, going over in your head what will happen if you're late again. 
    
    The train arrives 15 minutes later and you board. 
    At least you get a seat!
    """
    
    elsif !dog_fed
    puts """
    You arrive on the platform.

    'The next train has been cancelled.
    The following train departing in, 15 minutes.'

    You can't help but feel like this was karma for not feeding your dog.
    
    """
    else
    puts """
    You arrive on the platform, just as your train arrives. 
    What a great morning!
    """
    end
    end
    
    end
        # input = gets.to_s.strip
        # if input == "a"
        #     puts """
        
        # """
        #     elsif input == "b"
        #     puts """
            
        #     """
        #     elsif input == "c"
        #     puts """
        
        # """
        #     elsif input == "d"
        #     puts """
            
        #     """
        #     end
        # end
    
    
    # 
    # 
    # 
    # 
    # 
    # 
    # 
    # 
    # 
    # 
    # 
    # 
    # 
    # 
    # 
    # 
    # 
    =begin
    def method
    puts """
    
    """
    input = gets.to_s.strip
    if input == "a"
        puts """
    
    """
        elsif input == "b"
        puts """
        
        """
        elsif input == "c"
        puts """
    
    """
        elsif input == "d"
        puts """
        
        """
        end
    end
    =end
    end