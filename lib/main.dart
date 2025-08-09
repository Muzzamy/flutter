import 'package:flutter/material.dart';
import 'package:practice/buttons/buttons.dart';
import 'package:practice/screens/assignments/card_with_help/card_help.dart';
import 'package:practice/screens/assignments/card_with_widgets/card_widgets.dart';
import 'package:practice/screens/assignments/profile_listview/profile_listview.dart';
import 'package:practice/screens/assignments/switch_asssignment/switch_demo_assignmnet.dart';
import 'package:practice/screens/dice_game/dice_game.dart';
import 'package:practice/screens/girdview_gridview_buileder/gridview_gridview_builder.dart';
import 'package:practice/screens/input_demo/input_demo.dart';
import 'package:practice/screens/landing_page/landing_page.dart';
import 'package:practice/screens/practice_with_uzair/practice_containar.dart';
import 'package:practice/screens/practice_with_uzair/practice_row_and_column.dart';
import 'package:practice/screens/practice_with_uzair/practice_uzair.dart';
import 'package:practice/screens/stateful_demo/stateful_demo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LandingPage()
    );
  }
}