import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gossipia/views/question_list.dart';
import 'package:gossipia/views/question_list_deux.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 10,
                      right: 10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          'assets/images/app_logo.png',
                          width: 100,
                        ),
                        Icon(Icons.person)
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text('Bienvenue'),
                  SizedBox(
                    height: 10,
                  ),
                  Text('John Deroy', style: TextStyle(fontSize: 20)),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(30),
                      child: ListView(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return QuestionListDeux();
                                  },
                                ),
                              );
                            },
                            child: Container(
                              width: 300,
                              height: 70,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color(0xffDCF3F9)),
                              child: Row(
                                children: [Icon(Icons.error), Text('Sport')],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: 300,
                            height: 70,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xffDCF3F9)),
                            child: Row(
                              children: [Icon(Icons.error), Text('Music')],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: 300,
                            height: 70,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xffDCF3F9)),
                            child: Row(
                              children: [Icon(Icons.error), Text('Books')],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: 300,
                            height: 70,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xffDCF3F9)),
                            child: Row(
                              children: [Icon(Icons.error), Text('Science')],
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Text('Gossipia version 1.0.0'),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
