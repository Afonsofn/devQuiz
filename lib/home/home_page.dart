import 'package:DevQuiz/home/widgets/app_bar_widget.dart';
import 'package:DevQuiz/home/widgets/level_button.dart';
import 'package:DevQuiz/home/widgets/quiz_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                LevelButton(label: 'Fácil'),
                LevelButton(label: 'Médio'),
                LevelButton(label: 'Difícil'),
                LevelButton(label: 'Perito'),
              ],
            ),
            SizedBox(
              height: 24,
            ),
            Expanded(
              child: GridView.count(
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                crossAxisCount: 2,
                children: [
                  QuizCard(),
                  QuizCard(),
                  QuizCard(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
