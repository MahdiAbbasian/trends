class Questions {
  String question;
  String answer1;
  String answer2;

  Questions(
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

List<Questions> testList = [
  Questions(
    "Did you take your diabetes medication?   ",
    "yes",
    "no",
  ),
  Questions(
    "Did you take your blood pressure medication? ",
    "yes",
    "no",
  ),
  Questions("Did you take your cholesterol medication? ", "yes", "no"),
  Questions(
    "Did you take your blood thinner medication?  ",
    "yes",
    "no",
  ),
  Questions(
    " ",
    "yes",
    "no",
  ),
  //Questions("finish","","",3)
];