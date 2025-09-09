/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Varrying text via loops
 - Functions
 
 In the assignment:
 - A story with at least 6 knots
 - Vary some text via a loop
 - Create a function that serves as a timer. (This is shown in the video)
*/


VAR time = -1 //  0 Morning, 1 Noon, 2 Night




-> seashore

== seashore ==
You are sitting on the beach.

It is { advance_time() }

// Looping array
// {&It's Morning|It's Noon|It's Evening}

{shells: There is a shell collector where you came from} 
+ {shells} [Talk to the shell collector] -> talk
+ [Stroll down the beach] -> beach2
-> DONE

== beach2 ==
This is further down the beach.

It is { advance_time() }
+ { time == 1} [Pick up some seashells] -> shells

+ [Stroll back up the beach] -> seashore

== shells ==
{&You pick up the shells|You stuff your pockets with more shells}
-> beach2

== talk ==
Collector - I see you've collected some shells. May I take a look?

+ [Go ahead!] -> show
+ [No, I'm in a hurry] -> decline

== show ==
Collector - Wow! You found one of the ones I've been searching for! May I add it to my collection?

+ [By all means!] -> give
+ [For a price...] -> sell
+ [Sorry, but I'd like to keep it] -> decline

== give == 
You give the collector your shell. His elation is palpable.

Collector - I can't possibly thank you enough! This means so much to me. I don't know what I would've done had you said no!
You go home feeling like a good person.
-> END

== sell ==
Collector - How much\? ${10\?|20?|50?|100?|1000?|10000. Final offer}

+ [Not enough] -> sell
+ [Sell] -> give

== decline ==
The collector's patience is at its end. This is the last shell they were looking for to complete their collection and, unbeknownst to you, they had this same interaction with three others today alone.
The collector pulls out a sharpened shell from his satchel and takes the shell by force. As you run away he shouts "DON'T YOU COME BACK TO MY BEACH AGAIN"
-> END

== function advance_time ==

    ~ time = time + 1
    
    {
        - time > 2:
            ~ time = 0
    } 
    
    {    
        - time == 0:
            ~ return "Morning"
        
        - time == 1:
            ~ return "Noon"
        
        - time == 2:
            ~ return "Night"
    
    }
    
        
    ~ return time
    
    
    
