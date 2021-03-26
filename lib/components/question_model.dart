import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class QuestionModel {
  final String topicId;
  final String id;
  final String langCode;
  final String question;
  final String answers;
  final List correctAnswer;
  final String level;
  final String explanation;

  QuestionModel(
      {this.topicId,
      this.id,
      this.langCode,
      this.question,
      this.answers,
      this.correctAnswer,
      this.level,
      this.explanation});

  factory QuestionModel.fromJson(json) {
    return QuestionModel(
        topicId: json['topicId'],
        id: json['id'],
        langCode: json['langCode'],
        question: json['question'],
        answers: json['answers'],
        correctAnswer: json['correctAnswer'],
        level: json['level'],
        explanation: json['explanation']);
  }
}

class QuestionModelList {
  final List list;

  QuestionModelList({this.list});

  factory QuestionModelList.fromJson(List array) {
    List value = [];
    try {
      array.forEach((element) {
        final model = QuestionModel.fromJson(element);
        value.add(model);
      });
    } catch (e, stack) {
      debugPrint('$e, $stack');
    }
    return QuestionModelList(list: value);
  }

  Future fromJson(String assetsPath) async {
    final jsonStr = await rootBundle.loadString(assetsPath);
    List jsons = jsonDecode(jsonStr);
    return QuestionModelList.fromJson(jsons).list;
  }

  void load() {
    fromJson('assets/jsons/adb.json');
  }
}
