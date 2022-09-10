import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quiz_app/screens/result_screen.dart';
import '../constants/constants.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({Key? key}) : super(key: key);

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  int questionIndex = 0;
  int correctAnswers = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: purpleColor,
        centerTitle: true,
        title: Text(
          'سوال ${questionIndex + 1} از ${getQuestionsList().length}',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _getIcon()!,
            SizedBox(
              height: 50,
            ),
            Text(
              '${getQuestionsList()[questionIndex].questionTitle}',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            ...List.generate(
              4,
              (index) => ListTile(
                onTap: () {
                  if (questionIndex < getQuestionsList().length - 1) {
                    setState(() {
                      if (index ==
                          getQuestionsList()[questionIndex].correctAnswer) {
                        setState(() {
                          correctAnswers = correctAnswers + 1;
                        });
                      }
                      questionIndex += 1;
                    });
                  } else if (questionIndex == getQuestionsList().length - 1) {
                    setState(() {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return ResultScreen(correctAnswer: correctAnswers);
                      }));
                    });
                    if (index ==
                        getQuestionsList()[questionIndex].correctAnswer) {
                      setState(() {
                        correctAnswers = correctAnswers + 1;
                      });
                    }
                  }
                },
                title: Text(
                  '${getQuestionsList()[questionIndex].answerList?[index]}',
                  textAlign: TextAlign.end,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget? _getIcon() {
    if (getQuestionsList()[questionIndex].imageNameNubmer == '1') {
      return Icon(
        FontAwesomeIcons.wandSparkles,
        color: orangeColor,
        size: 200,
      );
    } else if (getQuestionsList()[questionIndex].imageNameNubmer == '2') {
      return Icon(
        Icons.satellite_alt,
        color: orangeColor,
        size: 200,
      );
    } else if (getQuestionsList()[questionIndex].imageNameNubmer == '3') {
      return Icon(
        Icons.public,
        color: orangeColor,
        size: 200,
      );
    }
  }
}
