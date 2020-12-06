
class Question  {
  final String question;
  final String rightAnswer;
  final String task;
  final List <String> answers;

  Question(
      this.question,
      this.rightAnswer,
    this.task,
      this.answers

      );


}


List <Question> test1 = [
  Question(
      'Can I park here?',
      'Only for half an hour',
      "Please choose the best option to complete the sentence or conversation.",
      [
        'Sorry, I did that',
        'It is the same place',
        'Only for half an hour'
      ]
  ),
  Question(
      "What color will you paint the children's bedroom?",
      "We can't decide",
      "Please choose the best option to complete the sentence or conversation.",
      [
        'I hope it was right',
        "We can't decide",
        "It wasn't very difficult"
      ]
  ),
  Question(
      "I can't understand this email.",
      "Would you like some help?",
      "Please choose the best option to complete the sentence or conversation.",
      [
        "Would you like some help?",
        "Don't you know?",
        "I suppose you can."
      ]
  ),
  Question(
      "I'd like two tickets for tomorrow night.",
      "I'll just check for you.",
      "Please choose the best option to complete the sentence or conversation.",
      [
        "How much did you pay?",
        "Afternoon and evening.",
        "I'll just check for you."
      ]
  ),
  Question(
      "Shall we go to the gym now?",
      "I'm too tired.",
      "Please choose the best option to complete the sentence or conversation.",
      [
        "I'm too tired.",
        "It's very good.",
        "Not at all."
      ]
  ),
  Question(
      "His eyes were ...... bad that he couldn't read the number plate of the car in front.",
      "so",
      "Please choose the best option to complete the sentence or conversation.",
      [
        "such",
        "too",
        "so",
        "very"
      ]
  ),
  Question(
      "The company needs to decide ...... and for all what its position is on this point.",
      "once",
      "Please choose the best option to complete the sentence or conversation.",
      [
        "here",
        "once",
        "first",
        "finally"
      ]
  ),
  Question(
      "Don't put your cup on the ...... of the table – someone will knock it off.",
      "edge",
      "Please choose the best option to complete the sentence or conversation.",
      [
        "outside",
        "edge",
        "boundary",
        "border"
      ]
  ),
  Question(
      "I'm sorry - I didn't ...... to disturb you.",
      "mean",
      "Please choose the best option to complete the sentence or conversation.",
      [
        "hope",
        "think",
        "mean",
        "suppose"
      ]
  ),
  Question(
      "The singer ended the concert ...... her most popular song.",
      "with",
      "Please choose the best option to complete the sentence or conversation.",
      [
        "by",
        "with",
        "in",
        "as"
      ]
  ),
  Question(
      "Would you mind ...... these plates a wipe before putting them in the cupboard?",
      "giving",
      "Please choose the best option to complete the sentence or conversation.",
      [
        "making",
        "doing",
        "getting",
        "giving"
      ]
  ),
  Question(
      "I was looking forward ...... at the new restaurant, but it was closed.",
      "to eating",
      "Please choose the best option to complete the sentence or conversation.",
      [
        "to eat",
        "to have eating",
        "to eating",
        "eating"
      ]
  ),
  Question(
      "...... tired Melissa is when she gets home from work, she always makes time to say goodnight to the children.",
      "No matter how",
      "Please choose the best option to complete the sentence or conversation.",
      [
        "Whatever",
        "No matter how",
        "However much",
        "Although"
      ]
  ),
  Question(
      "It was only ten days ago ...... she started her new job.",
      "that",
      "Please choose the best option to complete the sentence or conversation.",
      [
        "then",
        "since",
        "after",
        "that"
      ]
  ),
  Question(
      "The shop didn't have the shoes I wanted, but they've ...... a pair specially for me.",
      "ordered",
      "Please choose the best option to complete the sentence or conversation.",
      [
        "booked",
        "ordered",
        "commanded",
        "asked"
      ]
  ),
  Question(
      "Have you got time to discuss your work now or are you ...... to leave?",
      "about",
      "Please choose the best option to complete the sentence or conversation.",
      [
        "thinking",
        "round",
        "planned",
        "about"
      ]
  ),
  Question(
      "She came to live here ...... a month ago.",
      "almost",
      "Please choose the best option to complete the sentence or conversation.",
      [
        "quite",
        "beyond",
        "already",
        "almost"
      ]
  ),
  Question(
      "Once the plane is in the air, you can ...... your seat belts if you wish.",
      "unfasten",
      "Please choose the best option to complete the sentence or conversation.",
      [
        "undress",
        "unfasten",
        "unlock",
        "untie"
      ]
  ),
  Question(
      "I left my last job because I had no ...... to travel.",
      "opportunity",
      "Please choose the best option to complete the sentence or conversation.",
      [
        "place",
        "position",
        "opportunity",
        "possibility"
      ]
  ),
  Question(
      "It wasn't a bad crash and ...... damage was done to my car.",
      "little",
      "Please choose the best option to complete the sentence or conversation.",
      [
        "little",
        "small",
        "light",
        "mere"
      ]
  ),
  Question(
      "I'd rather you ...... to her why we can't go.",
      "explained",
      "Please choose the best option to complete the sentence or conversation.",
      [
        "would explain",
        "explained",
        "to explain",
        "will explain"
      ]
  ),
  Question(
      "Before making a decision, the leader considered all ...... of the argument.",
      "sides",
      "Please choose the best option to complete the sentence or conversation.",
      [
        "sides",
        "features",
        "perspectives",
        "shades"
      ]
  ),
  Question(
      "This new printer is recommended as being ...... reliable.",
      "highly",
      "Please choose the best option to complete the sentence or conversation.",
      [
        "greatly",
        "highly",
        "strongly",
        "readily"
      ]
  ),
  Question(
      "When I realised I had dropped my gloves, I decided to ...... my steps.",
      "retrace",
      "Please choose the best option to complete the sentence or conversation.",
      [
        "retrace",
        "regress",
        "resume",
        "return"
      ]
  ),
  Question(
      "Anne's house is somewhere in the ...... of the railway station.",
      "vicinity",
      "Please choose the best option to complete the sentence or conversation.",
      [
        "region",
        "quarter",
        "vicinity",
        "district"
      ]
  )

];

List<String> getAnswers(int i) {
  return test1[i].answers;
}



