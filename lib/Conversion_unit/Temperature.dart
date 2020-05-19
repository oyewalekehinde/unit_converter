import 'package:flutter/material.dart';

import '../size_config.dart';

class TemperatureConversion extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TemperatureConversion();
  }
}

class _TemperatureConversion extends State<TemperatureConversion> {
  TextEditingController celsuis = TextEditingController();
  TextEditingController fahrenheit = TextEditingController();
  TextEditingController kelvin = TextEditingController();
  TextEditingController rankie = TextEditingController();

  Widget _buildCelsuis() {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.widthMultiplier * 0.5,
          vertical: SizeConfig.heightMultiplier * 0.5),
      child: TextField(
        style: TextStyle(
            fontSize: SizeConfig.textSizeMultiplier * 3,
            fontWeight: FontWeight.bold),
        controller: celsuis,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
            suffixText: '˚C',
            suffixStyle: TextStyle(
                fontFamily: 'CircularStd-Book.otf',
                fontSize: SizeConfig.textSizeMultiplier * 3),
            labelStyle: TextStyle(fontSize: SizeConfig.textSizeMultiplier * 2),
            labelText: 'Celsuis',
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(15))),
        onChanged: (celsuis) {
          setState(() {
            kelvin.text = (double.parse(celsuis) + 273).toStringAsFixed(2);
            fahrenheit.text =
                ((double.parse(celsuis) * 9 / 5) + 32).toStringAsFixed(2);
            rankie.text =
                ((double.parse(celsuis) * 9 / 5) + 491.67).toStringAsFixed(2);
          });
        },
      ),
    );
  }

  Widget _buildKelvin() {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.widthMultiplier * 0.5,
          vertical: SizeConfig.heightMultiplier * 0.5),
      child: TextField(
        style: TextStyle(
            fontSize: SizeConfig.textSizeMultiplier * 3,
            fontWeight: FontWeight.bold),
        controller: kelvin,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
            suffixText: 'K',
            suffixStyle: TextStyle(
                fontFamily: 'CircularStd-Book.otf',
                fontSize: SizeConfig.textSizeMultiplier * 3),
            labelText: 'Kelvin',
            labelStyle: TextStyle(fontSize: SizeConfig.textSizeMultiplier * 2),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(15))),
        onChanged: (kelvin) {
          celsuis.text = (double.parse(kelvin) - 273).toStringAsFixed(2);
          fahrenheit.text =
              ((double.parse(celsuis.text) * 9 / 5) + 32).toStringAsFixed(2);
          rankie.text = (double.parse(kelvin) * 1.8).toStringAsFixed(2);
        },
      ),
    );
  }

  Widget _buildfahrenheit() {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.widthMultiplier * 0.5,
          vertical: SizeConfig.heightMultiplier * 0.5),
      child: TextField(
        controller: fahrenheit,
        style: TextStyle(
            fontSize: SizeConfig.textSizeMultiplier * 3,
            fontWeight: FontWeight.bold),
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
            suffixText: '˚F',
            suffixStyle: TextStyle(
                fontFamily: 'CircularStd-Book.otf',
                fontSize: SizeConfig.textSizeMultiplier * 3),
            labelText: 'Fahrenheit',
            labelStyle: TextStyle(fontSize: SizeConfig.textSizeMultiplier * 2),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            )),
        onChanged: (fahrenheit) {
          celsuis.text =
              ((double.parse(fahrenheit) - 32) * 5 / 9).toStringAsFixed(2);
          kelvin.text = (double.parse(celsuis.text) + 273).toStringAsFixed(2);
          rankie.text = (double.parse(fahrenheit) + 459.67).toStringAsFixed(2);
        },
      ),
    );
  }

  Widget _buildRankie() {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.widthMultiplier * 0.5,
          vertical: SizeConfig.heightMultiplier * 0.5),
      child: TextField(
        style: TextStyle(
            fontSize: SizeConfig.textSizeMultiplier * 3,
            fontWeight: FontWeight.bold),
        controller: rankie,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
            suffixText: 'R',
            suffixStyle: TextStyle(
                fontFamily: 'CircularStd-Book.otf',
                fontSize: SizeConfig.textSizeMultiplier * 3),
            labelText: 'Rankine scale',
            labelStyle: TextStyle(fontSize: SizeConfig.textSizeMultiplier * 2),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            )),
        onChanged: (rankie) {
          fahrenheit.text = (double.parse(rankie) - 459.67).toStringAsFixed(2);
          celsuis.text =
              ((double.parse(fahrenheit.text) - 32) * 5 / 9).toStringAsFixed(2);
          kelvin.text = (double.parse(celsuis.text) - 273).toStringAsFixed(2);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Temperature Conversion',
          style: TextStyle(
            fontSize: SizeConfig.textSizeMultiplier * 2.5,
            fontFamily: 'CircularStd-Book.otf',
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.clear_all),
            onPressed: () {
              setState(() {
                celsuis.text = '';
                fahrenheit.text = '';
                kelvin.text = '';
                rankie.text = '';
              });
            },
          )
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.4), BlendMode.dstATop),
                fit: BoxFit.cover,
                image: AssetImage('assets/Tmeter.jpg'))),
        child: Container(
          padding: EdgeInsets.symmetric(
              horizontal: SizeConfig.widthMultiplier * 1,
              vertical: SizeConfig.heightMultiplier * 1),
          child: ListView(
            children: <Widget>[
              _buildCelsuis(),
              _buildKelvin(),
              _buildfahrenheit(),
              _buildRankie(),
            ],
          ),
        ),
      ),
    );
  }
}
