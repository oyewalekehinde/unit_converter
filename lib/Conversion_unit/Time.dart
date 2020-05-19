import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../size_config.dart';

class TimeConversion extends StatefulWidget {
  @override
  _TimeConversionState createState() => _TimeConversionState();
}

class _TimeConversionState extends State<TimeConversion> {
  TextEditingController secondController = TextEditingController();
  TextEditingController minuteController = TextEditingController();
  TextEditingController hourController = TextEditingController();
  TextEditingController dayController = TextEditingController();
  TextEditingController weekController = TextEditingController();
  TextEditingController yearController = TextEditingController();

  Widget _buildSeconds() {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.widthMultiplier * 0.5,
          vertical: SizeConfig.heightMultiplier * 0.5),
      child: TextField(
        keyboardType: TextInputType.number,
        style: TextStyle(
            fontSize: SizeConfig.textSizeMultiplier * 3,
            fontWeight: FontWeight.bold),
        controller: secondController,
        decoration: InputDecoration(
          suffixText: 'Secs',
          suffixStyle: TextStyle(
              fontFamily: 'CircularStd-Book.otf',
              fontSize: SizeConfig.textSizeMultiplier * 3),
          labelStyle: TextStyle(fontSize: SizeConfig.textSizeMultiplier * 2),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
          labelText: 'Second',
        ),
        onChanged: (second) {
          setState(() {
            minuteController.text =
                (double.parse(second) / 60).toStringAsFixed(4);
            hourController.text =
                (double.parse(second) / 3600).toStringAsFixed(4);
            dayController.text =
                (double.parse(second) / 86400).toStringAsFixed(4);
            weekController.text =
                (double.parse(second) / 604800).toStringAsFixed(4);
            yearController.text =
                (double.parse(second) / 31536000).toStringAsFixed(4);
          });
        },
      ),
    );
  }

  Widget _buildMinutes() {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.widthMultiplier * 0.5,
          vertical: SizeConfig.heightMultiplier * 0.5),
      child: TextField(
        keyboardType: TextInputType.number,
        style: TextStyle(
            fontSize: SizeConfig.textSizeMultiplier * 3,
            fontWeight: FontWeight.bold),
        controller: minuteController,
        decoration: InputDecoration(
          suffixText: 'Mins',
          suffixStyle: TextStyle(
              fontFamily: 'CircularStd-Book.otf',
              fontSize: SizeConfig.textSizeMultiplier * 3),
          labelStyle: TextStyle(fontSize: SizeConfig.textSizeMultiplier * 2),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0)),
          labelText: 'Minute',
        ),
        onChanged: (minute) {
          secondController.text = (double.parse(minute) * 60).toStringAsFixed(2);
          hourController.text = (double.parse(minute) / 60).toStringAsFixed(4);
          dayController.text = (double.parse(minute) / 1440).toStringAsFixed(4);
          weekController.text = (double.parse(minute) / 10080).toStringAsFixed(4);
          yearController.text =
              (double.parse(minute) / 525600).toStringAsFixed(4);
        },
      ),
    );
  }

  Widget _buildHour() {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.widthMultiplier * 0.5,
          vertical: SizeConfig.heightMultiplier * 0.5),
      child: TextField(
        keyboardType: TextInputType.number,
        style: TextStyle(
            fontSize: SizeConfig.textSizeMultiplier * 3,
            fontWeight: FontWeight.bold),
        controller: hourController,
        decoration: InputDecoration(
          suffixText: 'Hrs',
          suffixStyle: TextStyle(
              fontFamily: 'CircularStd-Book.otf',
              fontSize: SizeConfig.textSizeMultiplier * 3),
          labelStyle: TextStyle(fontSize: SizeConfig.textSizeMultiplier * 2),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0)),
          labelText: 'Hour',
        ),
        onChanged: (hour) {
          secondController.text = (double.parse(hour) * 3600).toStringAsFixed(2);
          minuteController.text = (double.parse(hour) * 60).toStringAsFixed(4);
          dayController.text = (double.parse(hour) / 24).toStringAsFixed(4);
          weekController.text = (double.parse(hour) / 168).toStringAsFixed(4);
          yearController.text = (double.parse(hour) / 8760).toStringAsFixed(4);
        },
      ),
    );
  }

  Widget _buildDays() {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.widthMultiplier * 0.5,
          vertical: SizeConfig.heightMultiplier * 0.5),
      child: TextField(
        keyboardType: TextInputType.number,
        style: TextStyle(
            fontSize: SizeConfig.textSizeMultiplier * 3,
            fontWeight: FontWeight.bold),
        controller: dayController,
        decoration: InputDecoration(
          suffixText: 'Days',
          suffixStyle: TextStyle(
              fontFamily: 'CircularStd-Book.otf',
              fontSize: SizeConfig.textSizeMultiplier * 3),
          labelStyle: TextStyle(fontSize: SizeConfig.textSizeMultiplier * 2),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0)),
          labelText: 'Day',
        ),
        onChanged: (day) {
          secondController.text = (double.parse(day) * 86400).toStringAsFixed(2);
          minuteController.text = (double.parse(day) * 1440).toStringAsFixed(4);
          hourController.text = (double.parse(day) * 24).toStringAsFixed(4);
          weekController.text = (double.parse(day) / 7).toStringAsFixed(4);
          yearController.text = (double.parse(day) / 365).toStringAsFixed(4);
        },
      ),
    );
  }

  Widget _buildWeeks() {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.widthMultiplier * 0.5,
          vertical: SizeConfig.heightMultiplier * 0.5),
      child: TextField(
        keyboardType: TextInputType.number,
        style: TextStyle(
            fontSize: SizeConfig.textSizeMultiplier * 3,
            fontWeight: FontWeight.bold),
        controller: weekController,
        decoration: InputDecoration(
          suffixText: 'Wks',
          suffixStyle: TextStyle(
              fontFamily: 'CircularStd-Book.otf',
              fontSize: SizeConfig.textSizeMultiplier * 3),
          labelStyle: TextStyle(fontSize: SizeConfig.textSizeMultiplier * 2),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0)),
          labelText: 'Week',
        ),
        onChanged: (week) {
          secondController.text =
              (double.parse(week) * 604800).toStringAsFixed(2);
          minuteController.text = (double.parse(week) * 10080).toStringAsFixed(4);
          hourController.text = (double.parse(week) * 168).toStringAsFixed(4);
          dayController.text = (double.parse(week) * 7).toStringAsFixed(4);
          yearController.text = (double.parse(week) / 52).toStringAsFixed(4);
        },
      ),
    );
  }

  Widget _buildYears() {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.widthMultiplier * 0.5,
          vertical: SizeConfig.heightMultiplier * 0.5),
      child: TextField(
        keyboardType: TextInputType.number,
        style: TextStyle(
            fontSize: SizeConfig.textSizeMultiplier * 3,
            fontWeight: FontWeight.bold),
        controller: yearController,
        decoration: InputDecoration(
          suffixText: 'Yrs',
          suffixStyle: TextStyle(
              fontFamily: 'CircularStd-Book.otf',
              fontSize: SizeConfig.textSizeMultiplier * 3),
          labelStyle: TextStyle(fontSize: SizeConfig.textSizeMultiplier * 2),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
          labelText: 'Year',
        ),
        onChanged: (year) {
          secondController.text =
              (double.parse(year) * 31536000).toStringAsFixed(4);
          minuteController.text = (double.parse(year) * 74880).toStringAsFixed(2);
          hourController.text = (double.parse(year) * 8760).toStringAsFixed(4);
          dayController.text = (double.parse(year) * 365).toStringAsFixed(4);
          weekController.text = (double.parse(year) * 52).toStringAsFixed(4);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Time Conversion'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.clear_all),
            onPressed: () {
              setState(() {
                secondController.text = '';
                minuteController.text = '';
                hourController.text = '';
                dayController.text = '';
                weekController.text = '';
                yearController.text = '';
              });
            },
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.4), BlendMode.dstATop),
                fit: BoxFit.cover,
                image: AssetImage('assets/time.jpg'))),
        child: Container(
         padding: EdgeInsets.symmetric(
              horizontal: SizeConfig.widthMultiplier * 1,
              vertical: SizeConfig.heightMultiplier * 1),
          child: ListView(
            children: <Widget>[
              _buildSeconds(),
              _buildMinutes(),
              _buildHour(),
              _buildDays(),
              _buildWeeks(),
              _buildYears(),
            ],
          ),
        ),
      ),
    );
  }
}
