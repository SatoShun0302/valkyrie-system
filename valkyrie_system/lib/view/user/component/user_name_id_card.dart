import 'package:flutter/material.dart';
import 'package:valkyrie_system/extension/build_context_extension.dart';

class UserNameIdCard extends StatelessWidget {
  const UserNameIdCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        color: Colors.blue,
        width: context.screenWidth * 0.9,
        height: context.screenWidth * 0.3,
        child: Text("card"),
      ),
    );
  }
}
