import 'package:dio/dio.dart';
import 'package:gossipia/data/question.dart';

class QuestionApi {
  Dio dio = Dio();

  Future<List<Question>> getQuestion() async {
    dio.options = BaseOptions(baseUrl: 'https://opentdb.com');
    var responseServer = await dio.get("/api.php", queryParameters: {
      'amount': 10,
      'category': 21,
      'difficulty': "medium",
      'type': "multiple"
    });
    List<Question> questions = [];
    var data = responseServer.data;
    var results = data['results'];

    questions =
        List<Question>.from(results.map((e) => Question.fromJson(e)).toList());
    return questions;
  }
}
