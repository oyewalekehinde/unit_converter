import 'package:unit_converter/size_config.dart';

import './welcome.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(
      MyApp(),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return LayoutBuilder(
      builder: (context, constraints) {
        SizeConfig()..init(constraints);
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(fontFamily: "CircularStd-Book"),
          title: 'Converter',
          home: WelcomePage(),
        );
      },
    );
  }
}
