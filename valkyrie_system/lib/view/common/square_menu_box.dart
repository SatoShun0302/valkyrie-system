import 'package:flutter/material.dart';
import 'package:valkyrie_system/extension/build_context_extension.dart';

/// XX_top.dart画面で使用される事を想定した正方形型のメニューボタン
class SquareMenuBox extends StatelessWidget {
  const SquareMenuBox(
      {Key? key,
      required this.icon,
      required this.labelText,
      this.internetImagePath,
      this.localImagePath})
      : super(key: key);

  final IconData icon;
  final String labelText;
  final String? internetImagePath;
  final String? localImagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      width: context.screenWidth * 0.28,
      height: context.screenWidth * 0.25,
      child: Column(
        children: [
          Container(
            color: Colors.yellow,
            width: context.screenWidth * 0.2,
            height: context.screenWidth * 0.2,
            child: internetImagePath != null || localImagePath != null
                ? internetImagePath != null
                    ? Image(
                        image: NetworkImage(internetImagePath!),
                      )
                    : Image.asset(localImagePath!)
                : Icon(icon),
          ),
          Container(
            color: Colors.blueGrey,
            child: FittedBox(child: Text(labelText)),
          )
        ],
      ),
    );
  }
}
