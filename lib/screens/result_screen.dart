import 'package:flutter/material.dart';
import 'package:quiz_app/constants/constants.dart';

class ResultScreen extends StatelessWidget {
  ResultScreen({Key? key, this.correctAnswer = 0}) : super(key: key);

  int correctAnswer;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: purpleBackgroundColor,
        centerTitle: true,
        title: Text(
          'نتیجه',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      backgroundColor: purpleBackgroundColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.military_tech,
              size: 300,
              color: orangeColor,
            ),
            Text(
              'تعداد پاسخ های صحیح شما',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              '$correctAnswer',
              style: TextStyle(
                color: Colors.white,
                fontSize: 100,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
