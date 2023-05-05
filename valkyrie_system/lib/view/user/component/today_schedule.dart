import 'package:flutter/material.dart';
import 'package:valkyrie_system/extension/build_context_extension.dart';

class TodaySchedule extends StatelessWidget {
  const TodaySchedule({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      width: context.screenWidth * 0.9,
      height: context.screenWidth * 0.6,
      child: Text("今日の対戦"),
    );
  }
}
