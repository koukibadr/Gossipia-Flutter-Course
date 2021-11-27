import 'package:flutter/material.dart';
import 'package:gossipia/data/question.dart';
import 'package:gossipia/data/question_api.dart';

class QuestionList extends StatefulWidget {

  int categoryId;

  QuestionList({Key? key, required this.categoryId}) : super(key: key);

  @override
  _QuestionListState createState() => _QuestionListState();
}

class _QuestionListState extends State<QuestionList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: FutureBuilder(
          future: QuestionApi().getQuestion(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Container(
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircularProgressIndicator(),
                    Text('Chargement en cours')
                  ],
                ),
              );
            } else if (snapshot.data == null || (snapshot.data as List<Question>).isEmpty) {
              return Container(
                child: Center(
                  child: Text("une erreur est survenue"),
                ),
              );
            } else {
              var list = snapshot.data as List<Question>;
              return Container(
                child: Column(
                  children: [
                    Expanded(
                      child: ListView.builder(
                        itemCount: list.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(10),
                            child: Container(
                              height: 70,
                              decoration: BoxDecoration(
                                color: Color(0xffDCF3F9),
                                borderRadius: BorderRadius.circular(10)
                              ),
                              child: Text(list[index].question),
                            ),
                          );
                        },
                      ),
                    )
                  ],
                ),
              );
            }
          },
        ),
      ),
    );
  }
}

//FutureBuilder