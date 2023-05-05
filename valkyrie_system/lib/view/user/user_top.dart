import 'package:flutter/material.dart';
import 'package:valkyrie_system/extension/build_context_extension.dart';

import '../common/square_menu_box.dart';
import 'component/today_schedule.dart';
import 'component/user_name_id_card.dart';

class UserTop extends StatelessWidget {
  const UserTop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: [
            const UserNameIdCard(),
            const TodaySchedule(),
            SizedBox(height: context.screenWidth * 0.1,child: Text("data"),),
            SizedBox(
              width: context.screenWidth * 0.9,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  SquareMenuBox(icon: Icons.add, labelText: 'プロフィール編集',),
                  SquareMenuBox(icon: Icons.add, labelText: '対戦履歴',),
                  SquareMenuBox(icon: Icons.add, labelText: '加入申請状況',),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
