import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../size_config.dart';

class LenghtConversion extends StatefulWidget {
  @override
  _LenghtConversionState createState() => _LenghtConversionState();
}

class _LenghtConversionState extends State<LenghtConversion> {
  TextEditingController meterController = TextEditingController();
  TextEditingController kilometerController = TextEditingController();
  TextEditingController mileController = TextEditingController();
  TextEditingController yardController = TextEditingController();
  TextEditingController footController = TextEditingController();
  TextEditingController inchController = TextEditingController();
  TextEditingController nauticalController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Length Conversion', style: TextStyle(
            fontSize: SizeConfig.textSizeMultiplier * 3,
            fontFamily: 'CircularStd-Book.otf',
          ),),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.clear_all,
              ),
              onPressed: () {
                setState(() {
                  meterController.text = '';
                  kilometerController.text = '';
                  mileController.text = '';
                  yardController.text = '';
                  footController.text = '';
                  inchController.text = '';
                  nauticalController.text = '';
                });
              }),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.3), BlendMode.dstATop),
                fit: BoxFit.cover,
                image: AssetImage('assets/sewing.jpg'))),
        child: Container(
          padding: EdgeInsets.symmetric(
              horizontal: SizeConfig.widthMultiplier * 1,
              vertical: SizeConfig.heightMultiplier * 1),
          child: ListView(
            children: <Widget>[
              _buildMetre(),
              _buildKilometre(),
              _buildMile(),
              _buildYard(),
              _buildFoot(),
              _buildInch(),
              _buildNmile(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMetre() {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.widthMultiplier * 0.5,
          vertical: SizeConfig.heightMultiplier * 0.5),
      child: TextField(
        controller: meterController,
        keyboardType: TextInputType.number,
        style: TextStyle(fontSize:SizeConfig.textSizeMultiplier * 3, fontWeight: FontWeight.bold),
        decoration: InputDecoration(
          suffixText: 'm',
          labelText: 'Metre',
          suffixStyle:
              TextStyle(fontFamily: 'CircularStd-Book.otf', fontSize:SizeConfig.textSizeMultiplier * 3),
          labelStyle: TextStyle(fontSize:SizeConfig.textSizeMultiplier * 2),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        onChanged: (meter) {
          kilometerController.text =
              (double.parse(meter) / 1000).toStringAsFixed(3);
          mileController.text =
              (double.parse(kilometerController.text) * 0.6214)
                  .toStringAsFixed(3);
          yardController.text =
              (double.parse(kilometerController.text) * 1093.61)
                  .toStringAsFixed(3);
          footController.text =
              (double.parse(kilometerController.text) * 3280.84)
                  .toStringAsFixed(3);
          inchController.text =
              (double.parse(kilometerController.text) * 39370.1)
                  .toStringAsFixed(3);
          nauticalController.text =
              (double.parse(kilometerController.text) * 0.54)
                  .toStringAsFixed(3);
        },
      ),
    );
  }

  Widget _buildKilometre() {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.widthMultiplier * 0.5,
          vertical: SizeConfig.heightMultiplier * 0.5),
      child: TextField(
        controller: kilometerController,
        keyboardType: TextInputType.number,
        style: TextStyle(fontSize:SizeConfig.textSizeMultiplier * 3, fontWeight: FontWeight.bold),
        decoration: InputDecoration(
          labelText: 'Kilometer',
          suffixText: 'Km',
          suffixStyle:
              TextStyle(fontFamily: 'CircularStd-Book.otf', fontSize:SizeConfig.textSizeMultiplier * 3),
          labelStyle: TextStyle(fontSize:SizeConfig.textSizeMultiplier * 2),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        onChanged: (kilometer) {
          meterController.text =
              (double.parse(kilometer) * 1000).toStringAsFixed(3);
          mileController.text =
              (double.parse(kilometer) * 0.6214).toStringAsFixed(3);
          yardController.text =
              (double.parse(kilometer) * 1093.61).toStringAsFixed(3);
          footController.text =
              (double.parse(kilometer) * 3280.84).toStringAsFixed(3);
          inchController.text =
              (double.parse(kilometer) * 39370.1).toStringAsFixed(3);
          nauticalController.text =
              (double.parse(kilometer) * 0.54).toStringAsFixed(3);
        },
      ),
    );
  }

  Widget _buildNmile() {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.widthMultiplier * 0.5,
          vertical: SizeConfig.heightMultiplier * 0.5),
      child: TextField(
        controller: nauticalController,
        keyboardType: TextInputType.number,
        style: TextStyle(fontSize:SizeConfig.textSizeMultiplier * 3, fontWeight: FontWeight.bold),
        decoration: InputDecoration(
          labelText: 'Nautical mile',
          suffixText: 'nmi',
          suffixStyle:
              TextStyle(fontFamily: 'CircularStd-Book.otf', fontSize:SizeConfig.textSizeMultiplier * 3),
          labelStyle: TextStyle(fontSize:SizeConfig.textSizeMultiplier * 2),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        onChanged: (nautical) {
          meterController.text =
              (double.parse(nautical) * 1852).toStringAsFixed(3);
          kilometerController.text =
              (double.parse(meterController.text) / 1000).toString();
          mileController.text =
              (double.parse(nautical) * 189 / 1.151).toStringAsFixed(3);
          yardController.text =
              (double.parse(nautical) * 2005.37).toStringAsFixed(3);
          footController.text =
              (double.parse(nautical) * 6076.12).toStringAsFixed(3);
          inchController.text =
              (double.parse(nautical) * 72913.4).toStringAsFixed(3);
        },
      ),
    );
  }

  Widget _buildInch() {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.widthMultiplier * 0.5,
          vertical: SizeConfig.heightMultiplier * 0.5),
      child: TextField(
        controller: inchController,
        keyboardType: TextInputType.number,
        style: TextStyle(fontSize:SizeConfig.textSizeMultiplier * 3, fontWeight: FontWeight.bold),
        decoration: InputDecoration(
          labelText: 'inch',
          suffixText: 'in',
          suffixStyle:
              TextStyle(fontFamily: 'CircularStd-Book.otf', fontSize:SizeConfig.textSizeMultiplier * 3),
          labelStyle: TextStyle(fontSize:SizeConfig.textSizeMultiplier * 2),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        onChanged: (inch) {
          meterController.text =
              (double.parse(inch) * 0.0254).toStringAsFixed(3);
          kilometerController.text =
              (double.parse(meterController.text) / 1000).toStringAsFixed(3);
          mileController.text =
              (double.parse(inch) * 0.0000158).toStringAsFixed(3);
          yardController.text =
              (double.parse(inch) * 0.0278).toStringAsFixed(3);
          footController.text =
              (double.parse(inch) * 0.083333).toStringAsFixed(3);
          nauticalController.text =
              (double.parse(inch) * 0.0000137).toStringAsFixed(3);
        },
      ),
    );
  }

  Widget _buildFoot() {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.widthMultiplier * 0.5,
          vertical: SizeConfig.heightMultiplier * 0.5),
      child: TextField(
        controller: footController,
        keyboardType: TextInputType.number,
        style: TextStyle(fontSize:SizeConfig.textSizeMultiplier * 3, fontWeight: FontWeight.bold),
        decoration: InputDecoration(
          labelText: 'Foot',
          suffixText: 'ft',
          suffixStyle:
              TextStyle(fontFamily: 'CircularStd-Book.otf', fontSize:SizeConfig.textSizeMultiplier * 3),
          labelStyle: TextStyle(fontSize:SizeConfig.textSizeMultiplier * 2),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        onChanged: (foot) {
          meterController.text =
              (double.parse(foot) * 0.9144).toStringAsFixed(3);
          kilometerController.text =
              (double.parse(meterController.text) / 1000).toStringAsFixed(3);
          mileController.text =
              (double.parse(foot) * 189 / 1000000).toStringAsFixed(3);
          yardController.text = (double.parse(foot) * 0.333).toStringAsFixed(3);
          inchController.text = (double.parse(foot) * 12).toStringAsFixed(3);
          nauticalController.text =
              (double.parse(foot) * 0.000165).toStringAsFixed(3);
        },
      ),
    );
  }

  Widget _buildYard() {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.widthMultiplier * 0.5,
          vertical: SizeConfig.heightMultiplier * 0.5),
      child: TextField(
        controller: yardController,
        keyboardType: TextInputType.number,
        style: TextStyle(fontSize:SizeConfig.textSizeMultiplier * 3, fontWeight: FontWeight.bold),
        decoration: InputDecoration(
          labelText: 'Yard',
          suffixText: 'yd',
          suffixStyle:
              TextStyle(fontFamily: 'CircularStd-Book.otf', fontSize:SizeConfig.textSizeMultiplier * 3),
          labelStyle: TextStyle(fontSize:SizeConfig.textSizeMultiplier * 2),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        onChanged: (yard) {
          meterController.text =
              (double.parse(yard) * 0.9144).toStringAsFixed(3);
          kilometerController.text =
              (double.parse(meterController.text) / 1000).toStringAsFixed(3);
          mileController.text =
              (double.parse(yard) * 568 / 1000000).toStringAsFixed(3);
          footController.text = (double.parse(yard) * 3).toStringAsFixed(3);
          inchController.text = (double.parse(yard) * 36).toStringAsFixed(3);
          nauticalController.text =
              (double.parse(yard) * 0.000494).toStringAsFixed(3);
        },
      ),
    );
  }

  Widget _buildMile() {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.widthMultiplier * 0.5,
          vertical: SizeConfig.heightMultiplier * 0.5),
      child: TextField(
        controller: mileController,
        keyboardType: TextInputType.number,
        style: TextStyle(fontSize:SizeConfig.textSizeMultiplier * 3, fontWeight: FontWeight.bold),
        decoration: InputDecoration(
          labelText: 'Mile',
          suffixText: 'mile',
          suffixStyle:
              TextStyle(fontFamily: 'CircularStd-Book.otf', fontSize:SizeConfig.textSizeMultiplier * 3),
          labelStyle: TextStyle(fontSize:SizeConfig.textSizeMultiplier * 2),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        onChanged: (mile) {
          meterController.text =
              (double.parse(mile) * 1609.34).toStringAsFixed(3);
          kilometerController.text =
              (double.parse(meterController.text) / 1000).toStringAsFixed(3);
          yardController.text = (double.parse(mile) * 1760).toStringAsFixed(3);
          footController.text = (double.parse(mile) * 5280).toStringAsFixed(3);
          inchController.text = (double.parse(mile) * 63360).toStringAsFixed(3);
          nauticalController.text =
              (double.parse(mile) * 0.869).toStringAsFixed(3);
        },
      ),
    );
  }
}
