import 'package:unit_converter/Conversion_unit/Frequency.dart';
import 'package:unit_converter/Conversion_unit/speed.dart';
import 'package:unit_converter/size_config.dart';

import './Conversion_unit/Length.dart';
import './Conversion_unit/Time.dart';
import './Conversion_unit/Temperature.dart';
import 'package:flutter/material.dart';
import './Conversion_unit/Mass.dart';
import './Conversion_unit/Pressure.dart';
import 'Conversion_unit/energy.dart';
import 'card_item.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(SizeConfig.heightMultiplier * 7),
        child: AppBar(
          centerTitle: false,
          title: Text(
            'Converter',
            style: TextStyle(
              fontFamily: "CircularStd-Book",
              fontSize: SizeConfig.textSizeMultiplier * 4,
            ),
          ),
        ),
      ),
      body: Padding(
        padding:  EdgeInsets.symmetric(
              horizontal: SizeConfig.widthMultiplier * 0.5,
              vertical: SizeConfig.heightMultiplier * 0.5),
        child: GridView(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 300,
              childAspectRatio: 0.8,
              crossAxisSpacing: SizeConfig.widthMultiplier * 1,
              mainAxisSpacing: SizeConfig.heightMultiplier * 1),
          children: <Widget>[
            CardItem(
              backgroundImage: 'assets/mass.jpg',
              cardName: 'Mass',
              pageRoute: MassConversion(),
            ),
            CardItem(
              backgroundImage: 'assets/sewing.jpg',
              cardName: 'Length',
              pageRoute: LenghtConversion(),
            ),
            CardItem(
              backgroundImage: 'assets/Tmeter.jpg',
              cardName: 'Temperature',
              pageRoute: TemperatureConversion(),
            ),
            CardItem(
              backgroundImage: 'assets/time.jpg',
              cardName: 'Time',
              pageRoute: TimeConversion(),
            ),
            CardItem(
              backgroundImage: 'assets/blood-pressure-monitor.jpg',
              cardName: 'Pressure',
              pageRoute: PressureConversion(),
            ),
            CardItem(
              backgroundImage: 'assets/energy.jpeg',
              cardName: 'Energy',
              pageRoute: EnergyConversion(),
            ),
            CardItem(
              backgroundImage: 'assets/frequency.jpeg',
              cardName: 'Frequency',
              pageRoute: FrequencyConversion(),
            ),
            CardItem(
              backgroundImage: 'assets/speed.jpg',
              cardName: 'Speed',
              pageRoute: SpeedConversion(),
            ),
          ],
        ),
      ),
    );
  }
}
