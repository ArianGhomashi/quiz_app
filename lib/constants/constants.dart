import 'package:flutter/material.dart';

import '../data/Question.dart';

Color purpleColor = Color(0xff6066D0);
Color orangeColor = Color(0xffFCA82F);
Color purpleBackgroundColor = Color(0xff4047C1);

List<Question> getQuestionsList() {
  var firstQuestion = Question();
  firstQuestion.questionTitle = 'مشهورترین شعبده‌باز جهان کیست؟';
  firstQuestion.imageNameNubmer = '1';
  firstQuestion.correctAnswer = 2;
  firstQuestion.answerList = [
    'امیراحمدادیبی',
    'دیوید کاپرفیلد',
    'هری هودینی',
    'دیوید بلین'
  ];

  var secondQuestion = Question();
  secondQuestion.questionTitle = 'چه کشوری ایستگاه فضایی میر را بنا کرد؟';
  secondQuestion.imageNameNubmer = '2';
  secondQuestion.correctAnswer = 0;
  secondQuestion.answerList = ['(شوروی سابق)روسیه', 'آمریکا', 'چین', 'هند'];

  var thirdQuestion = Question();
  thirdQuestion.questionTitle = 'قدیمی ترین کشور دنیا از نظر تمدن؟';
  thirdQuestion.imageNameNubmer = '3';
  thirdQuestion.correctAnswer = 0;
  thirdQuestion.answerList = ['ایران', 'مصر', 'یونان', 'ژاپن'];

  return [firstQuestion, secondQuestion, thirdQuestion];
}
