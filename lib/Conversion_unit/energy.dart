import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../size_config.dart';

class EnergyConversion extends StatefulWidget {
  @override
  _EnergyConversionState createState() => _EnergyConversionState();
}

class _EnergyConversionState extends State<EnergyConversion> {
  TextEditingController jouleController = TextEditingController();
  TextEditingController kilojouleController = TextEditingController();
  TextEditingController gramCaloriesController = TextEditingController();
  TextEditingController electronVoltController = TextEditingController();
  TextEditingController watthourController = TextEditingController();
  TextEditingController britishthermalController = TextEditingController();
  TextEditingController usthermController = TextEditingController();
  TextEditingController footPoundController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Energy Conversion',
          style: TextStyle(
            fontSize: SizeConfig.textSizeMultiplier * 3,
            fontFamily: 'CircularStd-Book.otf',
          ),
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.clear_all,
              ),
              onPressed: () {
                setState(() {
                  jouleController.text = '';
                  kilojouleController.text = '';
                  gramCaloriesController.text = '';
                  electronVoltController.text = '';
                  watthourController.text = '';
                  britishthermalController.text = '';
                  usthermController.text = '';
                  footPoundController.text = '';
                });
              }),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.2), BlendMode.dstATop),
                fit: BoxFit.cover,
                image: AssetImage('assets/energy.jpeg'))),
        child: Container(
          padding: EdgeInsets.symmetric(
              horizontal: SizeConfig.widthMultiplier * 1,
              vertical: SizeConfig.heightMultiplier * 1),
          child: ListView(
            children: <Widget>[
              _buildJoules(),
              _buildKilojoule(),
              _buildCalories(),
              _buildElectronVolt(),
              _buildWattHour(),
              _buildBritishThermal(),
              _buildUsTherm(),
              _buildFootPound(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildKilojoule() {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.widthMultiplier * 0.5,
          vertical: SizeConfig.heightMultiplier * 0.5),
      child: TextField(
        controller: kilojouleController,
        keyboardType: TextInputType.number,
        style: TextStyle(
            fontSize: SizeConfig.textSizeMultiplier * 3,
            fontWeight: FontWeight.bold),
        decoration: InputDecoration(
          labelText: 'Kilojoule',
          suffixText: 'Kj',
          suffixStyle: TextStyle(
              fontFamily: 'CircularStd-Book.otf',
              fontSize: SizeConfig.textSizeMultiplier * 3),
          labelStyle: TextStyle(fontSize: SizeConfig.textSizeMultiplier * 2),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        onChanged: (kilojoule) {
          jouleController.text =
              (double.parse(kilojoule) * 1000).toStringAsFixed(2);
          gramCaloriesController.text =
              (double.parse(kilojoule) * 239.006).toStringAsFixed(2);
          electronVoltController.text =
              (double.parse(kilojoule) * 6.24e+18).toStringAsExponential(2);
          watthourController.text =
              (double.parse(kilojoule) / 3.6).toStringAsFixed(2);
          britishthermalController.text =
              (double.parse(kilojoule) / 1.055).toStringAsFixed(2);
          usthermController.text =
              (double.parse(kilojoule) / 105480).toStringAsFixed(2);
          footPoundController.text =
              (double.parse(kilojoule) * 738).toStringAsFixed(2);
        },
      ),
    );
  }

  Widget _buildJoules() {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.widthMultiplier * 0.5,
          vertical: SizeConfig.heightMultiplier * 0.5),
      child: TextField(
        controller: jouleController,
        keyboardType: TextInputType.number,
        style: TextStyle(
            fontSize: SizeConfig.textSizeMultiplier * 3,
            fontWeight: FontWeight.bold),
        decoration: InputDecoration(
          suffixText: 'J',
          labelText: 'Joule',
          suffixStyle: TextStyle(
              fontFamily: 'CircularStd-Book.otf',
              fontSize: SizeConfig.textSizeMultiplier * 3),
          labelStyle: TextStyle(fontSize: SizeConfig.textSizeMultiplier * 2),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        onChanged: (joule) {
          kilojouleController.text =
              (double.parse(joule) / 1000).toStringAsFixed(2);
          gramCaloriesController.text =
              (double.parse(joule) * 0.239).toStringAsFixed(2);
          electronVoltController.text =
              (double.parse(joule) * 6.242e+18).toStringAsExponential(2);
          watthourController.text =
              (double.parse(joule) / 3600).toStringAsFixed(2);
          britishthermalController.text =
              (double.parse(joule) / 1055).toStringAsFixed(2);
          usthermController.text =
              (double.parse(joule) / 1.055e+8).toStringAsFixed(2);
          footPoundController.text =
              (double.parse(joule) / 1.356).toStringAsFixed(2);
        },
      ),
    );
  }

  Widget _buildFootPound() {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.widthMultiplier * 0.5,
          vertical: SizeConfig.heightMultiplier * 0.5),
      child: TextField(
        controller: footPoundController,
        keyboardType: TextInputType.number,
        style: TextStyle(
            fontSize: SizeConfig.textSizeMultiplier * 3,
            fontWeight: FontWeight.bold),
        decoration: InputDecoration(
          labelText: 'Fooot-Pound',
          suffixText: 'Ft.lb',
          suffixStyle: TextStyle(
              fontFamily: 'CircularStd-Book.otf',
              fontSize: SizeConfig.textSizeMultiplier * 3),
          labelStyle: TextStyle(fontSize: SizeConfig.textSizeMultiplier * 2),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        onChanged: (footPound) {
          jouleController.text =
              (double.parse(footPound) * 1.356).toStringAsFixed(2);
          kilojouleController.text =
              (double.parse(jouleController.text) / 1000).toString();
          gramCaloriesController.text =
              (double.parse(footPound) / 3.086).toStringAsFixed(2);
          electronVoltController.text =
              (double.parse(footPound) * 8.462e+18).toStringAsExponential(2);
          watthourController.text =
              (double.parse(footPound) / 2655).toStringAsFixed(2);
          britishthermalController.text =
              (double.parse(footPound) / 778).toStringAsFixed(2);
          usthermController.text =
              (double.parse(footPound) / 7.78e+7).toStringAsFixed(2);
        },
      ),
    );
  }

  Widget _buildUsTherm() {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.widthMultiplier * 0.5,
          vertical: SizeConfig.heightMultiplier * 0.5),
      child: TextField(
        controller: usthermController,
        keyboardType: TextInputType.number,
        style: TextStyle(
            fontSize: SizeConfig.textSizeMultiplier * 3,
            fontWeight: FontWeight.bold),
        decoration: InputDecoration(
          labelText: 'Us therm',
          suffixText: 'thm',
          suffixStyle: TextStyle(
              fontFamily: 'CircularStd-Book.otf',
              fontSize: SizeConfig.textSizeMultiplier * 3),
          labelStyle: TextStyle(fontSize: SizeConfig.textSizeMultiplier * 2),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        onChanged: (ustherm) {
          jouleController.text =
              (double.parse(ustherm) * 1.05e+8).toStringAsFixed(2);
          kilojouleController.text =
              (double.parse(jouleController.text) / 1000).toString();
          gramCaloriesController.text =
              (double.parse(ustherm) * 2.521e+7).toStringAsFixed(2);
          electronVoltController.text =
              (double.parse(ustherm) * 9.223e+18).toStringAsExponential(2);
          watthourController.text =
              (double.parse(ustherm) * 29300).toStringAsFixed(2);
          britishthermalController.text =
              (double.parse(ustherm) * 99976).toStringAsFixed(2);
          footPoundController.text =
              (double.parse(ustherm) * 7.78e+7).toStringAsFixed(2);
        },
      ),
    );
  }

  Widget _buildBritishThermal() {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.widthMultiplier * 0.5,
          vertical: SizeConfig.heightMultiplier * 0.5),
      child: TextField(
        controller: britishthermalController,
        keyboardType: TextInputType.number,
        style: TextStyle(
            fontSize: SizeConfig.textSizeMultiplier * 3,
            fontWeight: FontWeight.bold),
        decoration: InputDecoration(
          labelText: 'British thermal',
          suffixText: 'Btu',
          suffixStyle: TextStyle(
              fontFamily: 'CircularStd-Book.otf',
              fontSize: SizeConfig.textSizeMultiplier * 3),
          labelStyle: TextStyle(fontSize: SizeConfig.textSizeMultiplier * 2),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        onChanged: (britishthermal) {
          jouleController.text =
              (double.parse(britishthermal) * 1055).toStringAsFixed(2);
          kilojouleController.text =
              (double.parse(jouleController.text) / 1000).toStringAsFixed(2);
          gramCaloriesController.text =
              (double.parse(britishthermal) * 252).toStringAsFixed(2);
          electronVoltController.text =
              (double.parse(britishthermal) * 9.223e+18).toStringAsExponential(2);
          watthourController.text =
              (double.parse(britishthermal) / 3.412).toStringAsFixed(2);
          usthermController.text =
              (double.parse(britishthermal) / 99976).toStringAsFixed(2);
          footPoundController.text =
              (double.parse(britishthermal) * 778).toStringAsFixed(2);
        },
      ),
    );
  }

  Widget _buildWattHour() {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.widthMultiplier * 0.5,
          vertical: SizeConfig.heightMultiplier * 0.5),
      child: TextField(
        controller: watthourController,
        keyboardType: TextInputType.number,
        style: TextStyle(
            fontSize: SizeConfig.textSizeMultiplier * 3,
            fontWeight: FontWeight.bold),
        decoration: InputDecoration(
          labelText: 'Watthour',
          suffixText: 'Wh',
          suffixStyle: TextStyle(
              fontFamily: 'CircularStd-Book.otf',
              fontSize: SizeConfig.textSizeMultiplier * 3),
          labelStyle: TextStyle(fontSize: SizeConfig.textSizeMultiplier * 2),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        onChanged: (watthour) {
          jouleController.text =
              (double.parse(watthour) * 3600).toStringAsFixed(2);
          kilojouleController.text =
              (double.parse(jouleController.text) / 1000).toStringAsFixed(2);
          gramCaloriesController.text =
              (double.parse(watthour) * 189 / 860).toStringAsFixed(2);
          electronVoltController.text =
              (double.parse(watthour) * 9.223e+18).toStringAsExponential(2);
          britishthermalController.text =
              (double.parse(watthour) * 3.412).toStringAsFixed(2);
          usthermController.text =
              (double.parse(watthour) / 29300).toStringAsFixed(2);
          footPoundController.text =
              (double.parse(watthour) * 2655).toStringAsFixed(2);
        },
      ),
    );
  }

  Widget _buildElectronVolt() {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.widthMultiplier * 0.5,
          vertical: SizeConfig.heightMultiplier * 0.5),
      child: TextField(
        controller: electronVoltController,
        keyboardType: TextInputType.number,
        style: TextStyle(
            fontSize: SizeConfig.textSizeMultiplier * 3,
            fontWeight: FontWeight.bold),
        decoration: InputDecoration(
          labelText: 'ElectronVolt',
          suffixText: 'eV',
          suffixStyle: TextStyle(
              fontFamily: 'CircularStd-Book.otf',
              fontSize: SizeConfig.textSizeMultiplier * 3),
          labelStyle: TextStyle(fontSize: SizeConfig.textSizeMultiplier * 2),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        onChanged: (electronVolt) {
          jouleController.text =
              (double.parse(electronVolt) / 6.242e+18).toStringAsFixed(2);
          kilojouleController.text =
              (double.parse(electronVolt) / 9.223e+18).toStringAsFixed(2);
          gramCaloriesController.text =
              (double.parse(electronVolt) / 9.223e+18).toStringAsFixed(2);
          watthourController.text =
              (double.parse(electronVolt) / 9.223e+18).toStringAsFixed(2);
          britishthermalController.text =
              (double.parse(electronVolt) / 9.223e+18).toStringAsFixed(2);
          usthermController.text =
              (double.parse(electronVolt) / 9.223e+18).toStringAsFixed(2);
          footPoundController.text =
              (double.parse(electronVolt) / 8.642e+18).toStringAsFixed(2);
        },
      ),
    );
  }

  Widget _buildCalories() {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.widthMultiplier * 0.5,
          vertical: SizeConfig.heightMultiplier * 0.5),
      child: TextField(
        controller: gramCaloriesController,
        keyboardType: TextInputType.number,
        style: TextStyle(
            fontSize: SizeConfig.textSizeMultiplier * 3,
            fontWeight: FontWeight.bold),
        decoration: InputDecoration(
          labelText: 'GramCalories',
          suffixText: 'gcal',
          suffixStyle: TextStyle(
              fontFamily: 'CircularStd-Book.otf',
              fontSize: SizeConfig.textSizeMultiplier * 3),
          labelStyle: TextStyle(fontSize: SizeConfig.textSizeMultiplier * 2),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        onChanged: (gramCalories) {
          jouleController.text =
              (double.parse(gramCalories) * 4.184).toStringAsFixed(2);
          kilojouleController.text =
              (double.parse(gramCalories) / 239).toStringAsFixed(2);
          electronVoltController.text =
              (double.parse(gramCalories) * 9.223e+18).toStringAsExponential(2);
          watthourController.text =
              (double.parse(gramCalories) / 860).toStringAsFixed(2);
          britishthermalController.text =
              (double.parse(gramCalories) / 252).toStringAsFixed(2);
          usthermController.text =
              (double.parse(gramCalories) / 20521e+7).toStringAsFixed(2);
          footPoundController.text =
              (double.parse(gramCalories) * 3.086).toStringAsFixed(2);
        },
      ),
    );
  }
}
