import 'package:flutter/material.dart';
import 'package:gossipia/data/question.dart';
import 'package:gossipia/data/question_api.dart';

class QuestionListDeux extends StatefulWidget {
  const QuestionListDeux({Key? key}) : super(key: key);

  @override
  _QuestionListDeuxState createState() => _QuestionListDeuxState();
}

class _QuestionListDeuxState extends State<QuestionListDeux> {
  List<Question> questionList = [];
  bool chargement = true;

  @override
  void initState() {
    super.initState();
    QuestionApi().getQuestion().then((value) {
      setState(() {
        questionList = value;
        chargement = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: renderScreenContent(),
      ),
    );
  }

  Widget renderScreenContent() {
    if (chargement == true) {
      return Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(),
            Text('Chargement en cours'),
          ],
        ),
      );
    } else if (questionList.isEmpty) {
      return Container(
        child: Center(
          child: Text("une erreur est survenue"),
        ),
      );
    } else {
      return Container(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: questionList.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      height: 70,
                      decoration: BoxDecoration(
                        color: Color(0xffDCF3F9),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(questionList[index].question),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      );
    }
  }
}
