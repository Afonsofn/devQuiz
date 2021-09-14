import 'package:DevQuiz/core/app_text_styles.dart';
import 'package:DevQuiz/core/core.dart';
import 'package:DevQuiz/home/widgets/chart.dart';
import 'package:flutter/material.dart';

class ScoreCard extends StatelessWidget {
  const ScoreCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        height: 136,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: Chart(),
            ),
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Vamos Começar',
                    style: AppTextStyles.heading,
                  ),
                  Text(
                    'Complete os desafios e avançe nos conhecimentos',
                    style: AppTextStyles.body,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
