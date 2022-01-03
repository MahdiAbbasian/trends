class PhysicalQuestions {
  String question;
  String answer1;
  String answer2;

  PhysicalQuestions(
    this.question,
    this.answer1,
    this.answer2,
  );

  bool isRight(int patientAnswer) {
    if (patientAnswer == 1) {
      return true;
    } else {
      return false;
    }
  }
}

List<PhysicalQuestions> physicalTestList = [
  PhysicalQuestions(
    "How many minutes walked?",
    "yes",
    "no",
  ),
  PhysicalQuestions(
    "How many minutes of other exercise did you do?",
    "yes",
    "no",
  ),
  PhysicalQuestions("How many minutes before you had pain?", "yes", "no"),

  //Questions("finish","","",3)
];
