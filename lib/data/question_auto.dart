import 'package:json_annotation/json_annotation.dart';
part 'question_auto.g.dart';

@JsonSerializable()
class QuestionAuto {
  late String category;
  late String type;
  late String difficulty;
  late String question;
  late String correctAnswer;
  late List<String> incorrectAnswers;

  QuestionAuto({
    required this.category,
    required this.type,
    required this.difficulty,
    required this.correctAnswer,
    required this.incorrectAnswers,
    required this.question,
  });

  factory QuestionAuto.fromJson(Map<String, dynamic> json) =>
      _$QuestionAutoFromJson(json);

  Map<String, dynamic> toJson() => _$QuestionAutoToJson(this);
}
