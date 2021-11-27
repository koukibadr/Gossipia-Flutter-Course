import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreenGrid extends StatelessWidget {
  const HomeScreenGrid({Key? key}) : super(key: key);

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
                      padding: const EdgeInsets.all(20),
                      child: GridView.count(
                        crossAxisCount: 2,
                        mainAxisSpacing: 20,
                        crossAxisSpacing: 20,
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xffDCF3F9)),
                            child: Column(
                              children: [
                                Text('Sport'),
                                Icon(Icons.error),
                              ],
                            ),
                          ),
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xffDCF3F9)),
                            child: Column(
                              children: [
                                Text('Music'),
                                Icon(Icons.error),
                              ],
                            ),
                          ),
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xffDCF3F9)),
                            child: Column(
                              children: [
                                Text('Books'),
                                Icon(Icons.error),
                              ],
                            ),
                          ),
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xffDCF3F9)),
                            child: Column(
                              children: [
                                Text('Science'),
                                Icon(Icons.error),
                              ],
                            ),
                          ),
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
