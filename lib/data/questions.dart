import 'package:kahoot_demo/model/quizmodel.dart';

QuizModel loadQuestion(int numbQuestion) {

  List<QuizModel> questionList = [

    QuizModel(
        "Wie viele der weltweit produzierten Lebensmittel werden weggeworfen?",
        "Ein Drittel",
        ["Ein Viertel", "Ein Achtel", "Die Hälfte"]
    ),
    QuizModel(
        "Wie viel Prozent der einheimischen Tierarten in Deutschland sind vom Aussterben bedroht?",
        "Rund 35 Prozent",
        ["Rund 8 Prozent", "Rund 15 Prozent", "Rund 25 Prozent"]
    ),
    QuizModel(
        "Wie viele Plastikteile schwimmen bereits in unseren Meeren?",
        "Mehr als 5 Billionen",
        ["Mehr als eine Billionen", "Mehr als 3 Billionen", "Mehr als 50 Milliarden"]
    ),
    QuizModel(
        "Wie viel Plastikmüll kann recycelt werden?",
        "Etwa 9 Prozent",
        ["Etwa 25 Prozent", "Etwa 43 Prozent", "Etwa 32 Prozent"]
    ),
    QuizModel(
        "Welches Transportmittel ist am nachhaltigsten?",
        "Fahrrad",
        ["E-Scooter", "E-Auto", "Flugzeug"]
    ),
    QuizModel(
        "Wie viele Coffee to-go Becher werden täglich in Deutschland weggeworfen?",
        "Ungefähr 320.000",
        ["Ungefähr 128.000", "Ungefähr 30.000", "Ungefähr 700.000"]
    ),
    QuizModel(
        "Welche Energie gilt als nachhaltig?",
        "Wind und Solar",
        ["Gas", "Kohle", "Öl"]
    ),
    QuizModel(
        "Welcher Monat war weltweit der Wärmste seit Beginn der Aufzeichnungen?",
        "Juli 2021",
        ["August 2006", "Juli 1978", "September 1994"]
    ),
    QuizModel(
        "Wie viele Deutsche wollen laut Umfragen nachhaltig leben?",
        "75 Prozent",
        ["40 Prozent", "15 Prozent", "Ungefähr die Hälfte"]
    ),
    QuizModel(
        "Auf wie viel Grad Erwährmung haben sich die Staaten beim Pariser Klimaabkommen geeinigt?",
        "2 Grad",
        ["3 Grad", "4 Grad", "Ein Grad"]
    ),
  ];

  return questionList[numbQuestion];
}