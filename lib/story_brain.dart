import 'story.dart';

class StoryBrain {
  int storyNumber = 0;

  List<Story> _storyData = [
  Story(
      storyTitle:'Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: "Need a ride, boy?".',
      choice1Text: 'I\'ll hop in. Thanks for the help!',
      choice2Text: 'Better ask him if he\'s a murderer first.',
      choice1: 2,
      choice2: 1),
  Story(
      storyTitle: 'He nods slowly, unphased by the question.',
      choice1Text: 'At least he\'s honest. I\'ll climb in.',
      choice2Text: 'Wait, I know how to change a tire.',
      choice1: 2,
      choice2: 3),
  Story(
      storyTitle:'As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.',
      choice1Text: 'I love Elton John! Hand him the cassette tape.',
      choice2Text: 'It\'s him or me! You take the knife and stab him.',
      choice1: 5,
      choice2: 4),
  Story(
      storyTitle:'What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?',
      choice1Text: 'Restart',
      choice2Text: '',
      choice1: 0,
      choice2: 0),
  Story(
      storyTitle:'As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.',
      choice1Text: 'Restart',
      choice2Text: '',
      choice1: 0,
      choice2: 0),
  Story(
      storyTitle:
      'You bond with the murderer while crooning verses of "Can you feel the love tonight". He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: "Try the pier".',
      choice1Text: 'Restart',
      choice2Text: '',
      choice1: 0,
      choice2: 0)
  ];

  String getStory(){
    return _storyData[storyNumber].storyTitle;
  }

  String getChoice1(){
    return _storyData[storyNumber].choice1Text;
  }

  String getChoice2(){
    return _storyData[storyNumber].choice2Text;
  }

  void nextStory(int choiceNumber) {
    if (choiceNumber == 1) {
      storyNumber = _storyData[storyNumber].choice1;
    } else if (choiceNumber == 2) {
      storyNumber = _storyData[storyNumber].choice2;
    }
  }

  bool buttonShouldBeVisible() {
    if(_storyData[storyNumber].choice2 == 0) {
      return false;
    } else {
      return true;
    }
  }

}