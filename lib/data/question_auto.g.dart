// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_auto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QuestionAuto _$QuestionAutoFromJson(Map<String, dynamic> json) => QuestionAuto(
      category: json['category'] as String,
      type: json['type'] as String,
      difficulty: json['difficulty'] as String,
      correctAnswer: json['correctAnswer'] as String,
      incorrectAnswers: (json['incorrectAnswers'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      question: json['question'] as String,
    );

Map<String, dynamic> _$QuestionAutoToJson(QuestionAuto instance) =>
    <String, dynamic>{
      'category': instance.category,
      'type': instance.type,
      'difficulty': instance.difficulty,
      'question': instance.question,
      'correctAnswer': instance.correctAnswer,
      'incorrectAnswers': instance.incorrectAnswers,
    };
