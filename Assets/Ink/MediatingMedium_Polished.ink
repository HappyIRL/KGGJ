// Title: Mediating Medium
// For Global Game Jam 2022 "Duality"
// by Tim Schuchert



// Variables:
VAR convincedGrandpa = 0
VAR convincedGrandma = 0 

VAR playerThinksGrandmaOpresses = 0
VAR playerThinksGrandmaIsOversensitive = 0
VAR playerThinksGrandmaIsStubborn = 0

VAR playerThinksGranpaIsLazy = 0
VAR playerThinksGranpaIsWorkaholic = 0
VAR playerThinksGrandpaIsIndecisive = 0

VAR playerKnowsNote = 0
VAR playerKnowsPicture = 0
VAR playerKnowsBook = 0



-> Introduction
=== Introduction ===
"I am what the people call a medium. I can communicate with the ghosts of the spirit realm. I earn money by settling conflicts between the ghosts and living. My latest job lead me to the flat of an old geezer, who claimed to be haunted by his late wife. I thought this would be easily earned money."

-> PhysicalWorld_LivingRoom_1



=== PhysicalWorld_LivingRoom_1 ===
Grandpa: "Finally you have arrived. I was expecting you hours ago. I hope you don't mind that I drank the tea I made for the two of us alone?"

* Player: "Well, I could use a drink right now."
    Grandpa: "To bad for you. Tea is out and the next food delivery will arrive in two days. But I ain't paying you to drink my tea."
    Player: "Actually, you aren't paying me anything yet. So why don't you tell me more about this problem of yours?"
    ->PhysicalWorld_LivingRoom_1_1
* Player: "No, not at all. Let us get directly to business."
    Grandpa: "I see. You are a natural born capitalist. Just like my old boss."
    Player: "Good to know. But I don't believe you invited me to talk about your old boss, right?"
    -> PhysicalWorld_LivingRoom_1_1



=== PhysicalWorld_LivingRoom_1_1 ===
Grandpa: "Yeah, yeah. So, as I told you on the phone already, I believe the ghost of my dead wife haunts me. We lived together in this flat for almost 40 years, before she passed away seven months ago. Now I hear her whispered voice in my dreams, the walls start shaking for no reason and the radiators make strange sounds at night. I want you to tell her that she should leave me alone."

* Player: "Why do you think she haunts you?"
    -> PhysicalWorld_LivingRoom_1_2
* Player: "What makes you think that is a ghost causing all this?"
    -> PhysicalWorld_LivingRoom_1_2



=== PhysicalWorld_LivingRoom_1_2 ===
Grandpa: "I don't know. You are the expert in ghost stuff. You tell me!"
Player: "Right."
Grandpa: "I assume that she still wants to control my every step and tell me what to do. Even in death she won't leave me alone."

* Player: "I see. So you were opressed by her?"
~ convincedGrandpa --
~ playerThinksGrandmaOpresses = 1
    Grandpa: "Yes, indeed. She would always tell me what I have to do. And you wouldn't have wanted to see her when you disobeyed her commands. She would have made a fine army drill seargant if you ask me."
    -> PhysicalWorld_LivingRoom_1_3
    
* Player: "But she must have given you your own space at some point?"
~ convincedGrandpa ++
    Grandpa: "I mean ... kinda. She sometimes took over my duties. For example when I would go to the games with the boys. Or when stayed too long at work. Or when ..."
    Player: "..."
    Grandpa: "Oooh. Got you."
    -> PhysicalWorld_LivingRoom_1_3



=== PhysicalWorld_LivingRoom_1_3 ===
Grandpa: "Anyways. Can you help me find some sleep again?"
Player: "I'll do my best."
Grandpa: "Thank you youngblood."

*Go to bathroom
    -> Note

*Go to spirit realm
    -> SpiritRealm_Kitchen_1_1 



=== Note ===
~ playerKnowsNote = 1
A crumpled old post-it note:
"Monday: Bring out the trash.
Tuesday: Grocery shopping.
Saturday: Washing day. DON'T mix colored clothes with white ones.
DON'T forget to wash the dishes daily!!!"
-> SpiritRealm_Kitchen_1_1



=== SpiritRealm_Kitchen_1_1 ===
Grandma: "So you must be this ... medium, he has invited into our flat. I hope you've at least cleaned your shoes before you entered."
Player: "Our flat?"
Grandma: "Why, yes of course darling. I've spent the majority of my life here and I don't see a reason to leave it in death."

* {playerThinksGrandmaOpresses == 1} Player: "So you admit that you are here to haunt your husband?"
    Grandma: "Sounds hard if you put it like that. But I guess that this lazy sloth needs someone to remind him to take care of this place. Don't even get me started about the shape my grave at the cemetary is in." 
        {
            - playerKnowsNote == 1:
            Player: "He seems to be a little bit lost without your guidance."
        }
    -> SpiritRealm_Kitchen_1_2

* {playerThinksGrandmaOpresses == 0} Player: "I would agree that you have every right to still keep an eye out for your home."
    Grandma: "It is good to hear that someone understands me."
        {
            - playerKnowsNote == 1:
            Player: "Your husband would probably be lost without the hints you left him behind."
        }
    -> SpiritRealm_Kitchen_1_2

* Player: "Don't you think you husband is able to take care of everything on his own?"
    Grandma: "Hardly so. Though I have to admit, that when I was still around he would always do what he was asked to."
    -> SpiritRealm_Kitchen_1_2

    
    
=== SpiritRealm_Kitchen_1_2 ===
Grandma: "But anyways. Why are you here? Does he want you to get rid of me."
Player: "I am a medium Ma'am, not a ghost hunter. I don't destroy ghosts, but I help them to settle their grudges that prevent them from ascending to the afterlive and bind them to the spirit realm."
Grandma: "Sounds like a lot of Hocus Pocus to me."
Player: "Says the ghost."
Grandma: "..."
Player: "..."
Grandma: "I have to admit I am really surprised that he got someone else to do the dirty work. You see, back in the day, he was working on a farm. Day and night. This workaholic would take any shift, just to get away from home."

* Player: "That sounds horrific! How did he even manage to find time for you?"
    ~ convincedGrandma --
    ~playerThinksGranpaIsWorkaholic = 1
    Grandma: "That is the thing. He didn't. But of course I should be the one that is forced to leave now!"
    -> SpiritRealm_Kitchen_1_3

* Player: "Surely he had his reasons, didn't he?"
    ~ convincedGrandma ++
    Grandma: "I guess. It is a fact that our living standards would have been way lower if he wouldn't have sacrificed himself that much. But I never asked him to do that, you see?"
    -> SpiritRealm_Kitchen_1_3



=== SpiritRealm_Kitchen_1_3 ===
Player: "Okay, so how may I convince you to leave him alone?"
Grandma: "I see no way, you are getting me out of here. But maybe you want to ask him what he has to offer. Until then, please don't waste my time."
Player: "..."

* Go to bedroom
-> Picture

*Go to physical world
-> PhysicalWorld_LivingRoom_2_1



=== Picture ===
~ playerKnowsPicture = 1
An old yellowed image taken on a family vacation:
"Thank you, my love, for financing the trip for me and the girls. We have a wonderful time, the only thing missing is you. Hopefully you can join us next time."
-> PhysicalWorld_LivingRoom_2_1



=== PhysicalWorld_LivingRoom_2_1 ===
Grandpa: "So what did that gnarly old witch say? Will she go?"
Player: "No, not yet."
Grandpa: "What did she say then?"
Player: "She said you were a workaholic who took every chance to not be around the household to help her."
Grandpa: "How does she even dare? You obviously did not believe her, did you?"

* {playerThinksGranpaIsWorkaholic == 1} Player: "She sounded believeable."
    Granpa: "And so, the little fly is caught in a web of lies."
        {
            - playerKnowsPicture == 1:
            Player: "I know that you even skipped on the family vacation at least one time to work instead."
            Grandpa: "You know nothing. You hear me?"
        }
    -> PhysicalWorld_LivingRoom_2_2

* {playerThinksGranpaIsWorkaholic == 0} Player: "No way!"
        {
            - playerKnowsPicture == 1:
            Player: "I know that you used all of your paychecks to buy your family a better life. Even if this meant staying at home while they go on a vacation, because there wasn't enough money for all of you."
        }
    -> PhysicalWorld_LivingRoom_2_2

* Player: "Don't you think we have more important things to take care of?"
    -> PhysicalWorld_LivingRoom_2_2


=== PhysicalWorld_LivingRoom_2_2 ===
Grandpa: "What do we do now? Why does she have to react so oversensitive? It is not as if I would ask for a posthumous divorce. I just want to be left alone." 
Player: "Was she always like this?"
Grandpa: "Oversensitive? For many years."

* Player: "Must be hard to have a conversation with such a person."
    ~ convincedGrandpa --
    ~ playerThinksGrandmaIsOversensitive = 1
    Grandpa: "You have no idea how it is to have your every word weighed up."
    Player: "Well ..."
    Grandpa:  "You know how I meant this."
    Player: "Sure."
    -> PhysicalWorld_LivingRoom_2_3

* Player: "And you are sure that you didn't do anything wrong?"
    ~ convincedGrandpa ++
    Grandpa: "I mean I know I can get a little bit grumpy at times?"
    Player: "A little bit?"
    Grandpa: "Hmpf."
    Player: "..."
     -> PhysicalWorld_LivingRoom_2_3



=== PhysicalWorld_LivingRoom_2_3 ===    
Grandpa: "So, was there anything she wanted in return for her to leave?"
Player: "Nope. She was asking what you are offering."
Grandpa: "Offering? I don't have anything to offer. Go back and ask her. She must want something."

*Inspect Living Room
-> Book

*Go to spirit realm
-> SpiritRealm_Kitchen_2_1



=== Book ===
~ playerKnowsBook = 1
A book about ornithology in a box labeled "Sell":
"In 2015 the robin was voted Britain's national bird. 
In handwriting somebody has added: ... but it always was the favorite bird of my beloved wife <3."
-> SpiritRealm_Kitchen_2_1



=== SpiritRealm_Kitchen_2_1 ===
Grandma: "Don't say anything if it ain't good news."
Player: "..."
Grandma: "Fine. Spill the beans."
Player: "He claims you are reacting oversensitive and has nothing to offer."
Grandma: "And would you say I am oversensitive here?"

* {playerThinksGrandmaIsOversensitive == 1} Player: "It's not me who haunts their husband as a ghost."
    Grandma: "Thin Ice."
    Player: "Just sayin'."
     -> SpiritRealm_Kitchen_2_2

* {playerThinksGrandmaIsOversensitive == 0} Player: "I would say you are both experts in extreme reactions."
    Grandma: "So you are saying if we are equally bad, none of us is worse?"
    Player: "I guess so."
    -> SpiritRealm_Kitchen_2_2

* Player: "All I say right now, is that we need to stay focused, if we want to resolve this situation."
    -> SpiritRealm_Kitchen_2_2
    
    
    
=== SpiritRealm_Kitchen_2_2 ===   
Grandma: "Did he at least make an offer?"
Player: "He claimed to have nothing to offer and asked for a concrete request of yours."
Grandma: "God! Why does he always need to be so indecisive?"

* Player: "I am sure he is afraid that you might ask for money."
    ~ convincedGrandma --
    Grandma: "But what would I want with money?"
        {
            - playerKnowsBook == 1:
            Player: "I mean he, even tried to sell your weird bird book."
            Grandma: "No. He wouldn't dare. He knew how much this meant to me."
        }
    -> GrandmaDecision
    
* Player: "Maybe he is just cautious and doesn't want to make a wrong decision?"
    ~ convincedGrandma ++
    Grandma: "You may have a point there."
        {
            - playerKnowsBook == 1:
            Player: "He did not even dare to sell your precious bird book until now."
            Grandma: "It is kind of cute, isn't it?"
        }
    -> GrandmaDecision

* Player: "Don't you think it is a little bit late for therapy?"
    Grandma: "Was this really necessary?"
    Player: "I ... I am sorry."
    Grandma: "Nah. It is alright. It is a fair point after all."
    -> GrandmaDecision


    
=== GrandmaDecision ===
Grandma: "Well ... Thank you for taking the effort and opening my eyes, Medium."
Player: "Good to hear that. What will you do now?"
Grandma: "You'll see. But for now I have to leave. Farewell."
->GrandpaDecision



=== GrandpaDecision ===
Grandpa: "Is she finally gone?"
Player: "She is gone for now. But she wouldn't tell if she is gone for good."
Grandpa: "Stubborn as always."

* Player: "Amen to that."
    ~ convincedGrandpa --
    Grandpa: "I am very sorry you had to endure this."
    -> Payment

* Player: "Maybe, it is just a sign of great will power."
    ~ convincedGrandpa ++
    Grandpa: "I have to admit her self-confidence was one of the reasons I married her in the first place."
    -> Payment

* Player: "Well, case closed, isn't it?"
    Grandpa: "Only time will tell."
    -> Payment
    
    
=== Payment ===
Grandpa: "Thank you for you services. You should receive your payment in the next few days."
Player: "Good day to you, Sir."
Grandpa: "Good day."
-> Ending



=== Ending ===
{
    - convincedGrandpa > 2 && convincedGrandma > 1:
    "A view days later I received my payment with a hefty sum on top and a personal note by the old man, who thanked me for reigniting the love between him and his wife once more. Even death could not cut the band that was between them."
    
    - (convincedGrandpa >= -2 && convincedGrandpa <= 2) || (convincedGrandma >= -1 && convincedGrandma <= 1):
    "A view days later I received my usual payment, though the ghost of an roaming old woman was reported several times in the next few months in the area. It seems no matter how hard you try there are some fissures caused by death that even a medium can't bridge."
    
    - convincedGrandpa < -2 && convincedGrandma < -1:
    "I never received a payment for this job. I had to learn from the news a few days later that the old man had died from a heart attack. His neighbors reported that he was maniacally screaming at a ghost for hours prior to that. I remain silent about this job until today.
}
-> END
