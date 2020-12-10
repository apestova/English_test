
class Question  {
  int testNumber;
  String question;
  String rightAnswer;

  List <String> answers;

  Question(
      this.testNumber,
      this.question,
      this.rightAnswer,

      this.answers
      );

  Question.fromMap (Map<String, dynamic> map){
    testNumber = map['testNumber'];
  question = map['question'];
  rightAnswer = map ['rightAnswer'];

  answers =  map['answers'].split(';');
  }
  Map<String, dynamic> toMap (){
    return <String, dynamic> {
      'testNumber' : testNumber,
      'question' : question,
    'rightAnswer' : rightAnswer,

      'answers' : answers.join(';')
    };
  }
}
List <Question> test1 = [
  Question(
    1,
      'Can I park here?',
      'Only for half an hour',

      [
        'Sorry, I did that',
        'It is the same place',
        'Only for half an hour'
      ]
  ),
  Question(
    1,
      "What color will you paint the children's bedroom?",
      "We can't decide",

      [
        'I hope it was right',
        "We can't decide",
        "It wasn't very difficult"
      ]
  ),
  Question(
    1,
      "I can't understand this email.",
      "Would you like some help?",

      [
        "Would you like some help?",
        "Don't you know?",
        "I suppose you can."
      ]
  ),
  Question(
    1,
      "I'd like two tickets for tomorrow night.",
      "I'll just check for you.",

      [
        "How much did you pay?",
        "Afternoon and evening.",
        "I'll just check for you."
      ]
  ),
  Question(
    1,
      "Shall we go to the gym now?",
      "I'm too tired.",

      [
        "I'm too tired.",
        "It's very good.",
        "Not at all."
      ]
  ),
  Question(
    1,
      "His eyes were ...... bad that he couldn't read the number plate of the car in front.",
      "so",

      [
        "such",
        "too",
        "so",
        "very"
      ]
  ),
  Question(
    1,
      "The company needs to decide ...... and for all what its position is on this point.",
      "once",

      [
        "here",
        "once",
        "first",
        "finally"
      ]
  ),
  Question(
    1,
      "Don't put your cup on the ...... of the table – someone will knock it off.",
      "edge",

      [
        "outside",
        "edge",
        "boundary",
        "border"
      ]
  ),
  Question(
    1,
      "I'm sorry - I didn't ...... to disturb you.",
      "mean",

      [
        "hope",
        "think",
        "mean",
        "suppose"
      ]
  ),
  Question(
    1,
      "The singer ended the concert ...... her most popular song.",
      "with",

      [
        "by",
        "with",
        "in",
        "as"
      ]
  ),
  Question(
    1,
      "Would you mind ...... these plates a wipe before putting them in the cupboard?",
      "giving",

      [
        "making",
        "doing",
        "getting",
        "giving"
      ]
  ),
  Question(
    1,
      "I was looking forward ...... at the new restaurant, but it was closed.",
      "to eating",

      [
        "to eat",
        "to have eating",
        "to eating",
        "eating"
      ]
  ),
  Question(
    1,
      "...... tired Melissa is when she gets home from work, she always makes time to say goodnight to the children.",
      "No matter how",

      [
        "Whatever",
        "No matter how",
        "However much",
        "Although"
      ]
  ),
  Question(
    1,
      "It was only ten days ago ...... she started her new job.",
      "that",

      [
        "then",
        "since",
        "after",
        "that"
      ]
  ),
  Question(
    1,
      "The shop didn't have the shoes I wanted, but they've ...... a pair specially for me.",
      "ordered",

      [
        "booked",
        "ordered",
        "commanded",
        "asked"
      ]
  ),
  Question(
    1,
      "Have you got time to discuss your work now or are you ...... to leave?",
      "about",

      [
        "thinking",
        "round",
        "planned",
        "about"
      ]
  ),
  Question(
    1,
      "She came to live here ...... a month ago.",
      "almost",

      [
        "quite",
        "beyond",
        "already",
        "almost"
      ]
  ),
  Question(
    1,
      "Once the plane is in the air, you can ...... your seat belts if you wish.",
      "unfasten",

      [
        "undress",
        "unfasten",
        "unlock",
        "untie"
      ]
  ),

  Question(
    1,
      "I left my last job because I had no ...... to travel.",
      "opportunity",

      [
        "place",
        "position",
        "opportunity",
        "possibility"
      ]
  ),
  Question(
    1,
      "It wasn't a bad crash and ...... damage was done to my car.",
      "little",

      [
        "little",
        "small",
        "light",
        "mere"
      ]
  ),
  Question(
    1,
      "I'd rather you ...... to her why we can't go.",
      "explained",

      [
        "would explain",
        "explained",
        "to explain",
        "will explain"
      ]
  ),
  Question(
    1,
      "Before making a decision, the leader considered all ...... of the argument.",
      "sides",

      [
        "sides",
        "features",
        "perspectives",
        "shades"
      ]
  ),
  Question(
    1,
      "This new printer is recommended as being ...... reliable.",
      "highly",

      [
        "greatly",
        "highly",
        "strongly",
        "readily"
      ]
  ),
  Question(
    1,
      "When I realised I had dropped my gloves, I decided to ...... my steps.",
      "retrace",

      [
        "retrace",
        "regress",
        "resume",
        "return"
      ]
  ),
  Question(
    1,
      "Anne's house is somewhere in the ...... of the railway station.",
      "vicinity",

      [
        "region",
        "quarter",
        "vicinity",
        "district"
      ]
  ),
  Question(
      2,
      " Could you tell me your surname?",
      "Would you like me to spell it?",

      [
        "Would you like me to spell it?",
        "Do you like my family name?",
        "How do I say that?"
      ]
  ),
  Question(
      2,
      "This plant looks dead.",
      "It only needs some water.",
      [
        "It's in the garden.",
        "It only needs some water.",
        "It's sleeping."
      ]
  ),
  Question(
      2,
      "I hope it doesn't rain.",
      "So do I.",

      [
        "Of course not.",
        "Will it be wet?",
        "So do I."
      ]
  ),
  Question(
      2,
      "Are you going to come inside soon?",
      "In a minute.",

      [
        "For ever.",
        "Not long.",
        "In a minute."
      ]
  ),
  Question(
      2,
      "Who gave you this book, Lucy?",
      "I bought it.",

      [
        "I bought it.",
        "For my birthday.",
        "My uncle was."
      ]
  ),
  Question(
      2,
      "Shall we go out for pizza tonight?",
      "I'm too tired.",

      [
        "I know that.",
        "It's very good.",
        "I'm too tired."
      ]
  ),
  Question(
      2,
      "Do you mind if I come too?",
      "That's fine!",

      [
        "That's fine!",
        "I'd like to.",
        "I don't know if I can."
      ]
  ),
  Question(
      2,
      "There's someone at the door.",
      "Well, go and answer it then.",

      [
        "Can I help you?",
        "Well, go and answer it then.",
        "He's busy at the moment."
      ]
  ),
  Question(
      2,
      "How much butter do I need for this cake?",
      "I'm not sure.",

      [
        "I'd like one.",
        "I'll use some.",
        "I'm not sure."
      ]
  ),
  Question(
      2,
      "How long are you here for?",
      "Till tomorrow.",

      [
        "Since last week.",
        "Ten days ago.",
        "Till tomorrow."
      ]
  ),
  Question(
      2,
      "Have you guys had enough to eat?",
      "Is there any more rice?",

      [
        "That's all right.",
        "Is there any more rice?",
        "It's not the right time."
      ]
  ),
  Question(
      2,
      "That's my coat over there.",
      "Here you are.",

      [
        "Will you take it off?",
        "No, you haven't!",
        "Here you are."
      ]
  ),
  Question(
      2,
      "Let's go by bus.",
      "It'll take too long.",

      [
        "The train was expensive.",
        "We'll buy a ticket.",
        "It'll take too long."
      ]
  ),
  Question(
      2,
      "Do you know my brother Charlie?",
      "I don't think I do.",

      [
        "Sorry, he's not here.",
        "I don't think I do.",
        "I know."
      ]
  ),
  Question(
      2,
      "Would you like some ice in your drink or not?",
      "I don't mind.",

      [
        "I hope so.",
        "Yes, I shall.",
        "I don't mind."
      ]
  ),
  Question(
      2,
      "I hope I haven't ...... you any trouble by changing the arrangements.",
      "caused",

      [
        "put",
        "caused",
        "made",
        "done"
      ]
  ),
  Question(
      2,
      "No ...... Hannah is happy when you think how many prizes she has won recently.",
      "wonder",

      [
        "surprise",
        "problem",
        "question",
        "wonder"
      ]
  ),
  Question(
      2,
      "The floor is wet: don't run or you might ...... !",
      "slip",

      [
        "stoop",
        "spill",
        "slip",
        "spin"
      ]
  ),
  Question(
      2,
      "When you come to my house, ...... your camera with you.",
      "bring",

      [
        "take",
        "show",
        "fetch",
        "bring"
      ]
  ),
  Question(
      2,
      "Paul arrived at the shop ....... as the manager was closing for the day.",
      "just",

      [
        "even",
        "just",
        "still",
        "right"
      ]
  ),
  Question(
      2,
      "I would ...... to stay at home and relax for a change.",
      "rather",

      [
        "rather",
        "better",
        "prefer",
        "enjoy"
      ]
  ),
  Question(
      2,
      "Is there ...... of food for everyone?",
      "plenty",

      [
        "adequate",
        "enough",
        "sufficient",
        "plenty"
      ]
  ),
  Question(
      2,
      "Lily says she's happy at school but she's ...... complaining.",
      "always",

      [
        "rarely",
        "sometimes",
        "always",
        "often"
      ]
  ),
  Question(
      2,
      "...... the step when you go in.",
      "Mind",

      [
        "Consider",
        "Mind",
        "Attend",
        "Look"
      ]
  ),
  Question(
      2,
      "...... stay the night if it's too difficult to get home.",
      "By all means",

      [
        "At all costs",
        "By all means",
        "In all",
        "On the whole"
      ]
  )

];






