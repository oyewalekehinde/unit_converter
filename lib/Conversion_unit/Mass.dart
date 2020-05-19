import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

import '../size_config.dart';

class MassConversion extends StatefulWidget {
  @override
  _MassConversionState createState() => _MassConversionState();
}

class _MassConversionState extends State<MassConversion> {
  TextEditingController gram = TextEditingController();
  TextEditingController kilogram = TextEditingController();
  TextEditingController tonne = TextEditingController();
  TextEditingController ounce = TextEditingController();
  TextEditingController pound = TextEditingController();
  TextEditingController imperial = TextEditingController();
  TextEditingController stone = TextEditingController();

  Widget _buildgram() => Padding(
        padding: EdgeInsets.symmetric(
            horizontal: SizeConfig.widthMultiplier * 0.5,
            vertical: SizeConfig.heightMultiplier * 0.5),
        child: TextField(
          controller: gram,
          keyboardType: TextInputType.number,
          style: TextStyle(
              fontSize: SizeConfig.textSizeMultiplier * 3,
              fontWeight: FontWeight.bold),
          decoration: InputDecoration(
            suffixStyle: TextStyle(
                fontFamily: 'CircularStd-Book.otf',
                fontSize: SizeConfig.textSizeMultiplier * 3),
            suffixText: 'g',
            labelText: 'Gram',
            labelStyle: TextStyle(fontSize: SizeConfig.textSizeMultiplier * 2),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          onChanged: (gram) {
            setState(() {
              kilogram.text = (double.parse(gram) / 1000).toStringAsFixed(3);
              tonne.text =
                  (double.parse(kilogram.text) / 1000).toStringAsFixed(3);
              ounce.text = (double.parse(gram) * 0.0353).toStringAsFixed(3);
              pound.text = (double.parse(gram) * 0.002205).toStringAsFixed(3);
              imperial.text =
                  (double.parse(gram) * 0.00000098).toStringAsFixed(3);
              stone.text = (double.parse(gram) * 0.0001575).toStringAsFixed(3);
            });
          },
        ),
      );
  Widget _buildkilogram() => Padding(
        padding: EdgeInsets.symmetric(
            horizontal: SizeConfig.widthMultiplier * 0.5,
            vertical: SizeConfig.heightMultiplier * 0.5),
        child: TextField(
          controller: kilogram,
          keyboardType: TextInputType.number,
          style: TextStyle(
              fontSize: SizeConfig.textSizeMultiplier * 3,
              fontWeight: FontWeight.bold),
          decoration: InputDecoration(
            labelText: 'Kilogram',
            suffixText: 'Kg',
            suffixStyle: TextStyle(
                fontFamily: 'CircularStd-Book.otf',
                fontSize: SizeConfig.textSizeMultiplier * 3),
            labelStyle: TextStyle(fontSize: SizeConfig.textSizeMultiplier * 2),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          onChanged: (kilogram) {
            gram.text = (double.parse(kilogram) * 1000).toStringAsFixed(3);
            tonne.text = (double.parse(kilogram) * 0.001).toStringAsFixed(3);
            ounce.text = (double.parse(kilogram) * 35.274).toStringAsFixed(3);
            pound.text = (double.parse(kilogram) * 2.205).toStringAsFixed(3);
            imperial.text =
                (double.parse(kilogram) * 0.00098).toStringAsFixed(3);
            stone.text = (double.parse(kilogram) * 0.1575).toStringAsFixed(3);
          },
        ),
      );
  Widget _buildtonne() => Padding(
        padding: EdgeInsets.symmetric(
            horizontal: SizeConfig.widthMultiplier * 0.5,
            vertical: SizeConfig.heightMultiplier * 0.5),
        child: TextField(
          keyboardType: TextInputType.number,
          controller: tonne,
          style: TextStyle(
              fontSize: SizeConfig.textSizeMultiplier * 3,
              fontWeight: FontWeight.bold),
          decoration: InputDecoration(
            labelText: 'Tonne',
            suffixText: 'tons',
            suffixStyle: TextStyle(
                fontFamily: 'CircularStd-Book.otf',
                fontSize: SizeConfig.textSizeMultiplier * 3),
            labelStyle: TextStyle(fontSize: SizeConfig.textSizeMultiplier * 2),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          onChanged: (tonne) {
            gram.text = (double.parse(tonne) * 1000000).toStringAsFixed(3);
            kilogram.text = (double.parse(tonne) * 1000).toStringAsFixed(3);
            ounce.text = (double.parse(tonne) * 35274).toStringAsFixed(3);
            pound.text = (double.parse(tonne) * 2204.62).toStringAsFixed(3);
            imperial.text = (double.parse(tonne) * 0.984207).toStringAsFixed(3);
            stone.text = (double.parse(tonne) * 157.43).toStringAsFixed(3);
          },
        ),
      );
  Widget _buildpound() => Padding(
        padding: EdgeInsets.symmetric(
            horizontal: SizeConfig.widthMultiplier * 0.5,
            vertical: SizeConfig.heightMultiplier * 0.5),
        child: TextField(
          keyboardType: TextInputType.number,
          controller: pound,
          style: TextStyle(
              fontSize: SizeConfig.textSizeMultiplier * 3,
              fontWeight: FontWeight.bold),
          decoration: InputDecoration(
            labelText: 'Pound',
            suffixText: 'lb',
            suffixStyle: TextStyle(
                fontFamily: 'CircularStd-Book.otf',
                fontSize: SizeConfig.textSizeMultiplier * 3),
            labelStyle: TextStyle(fontSize: SizeConfig.textSizeMultiplier * 2),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          onChanged: (pound) {
            kilogram.text = (double.parse(pound) * 0.454).toStringAsFixed(3);
            tonne.text = (double.parse(pound) * 0.00045).toStringAsFixed(3);
            ounce.text = (double.parse(pound) * 16).toStringAsFixed(3);
            gram.text = (double.parse(pound) * 453.592).toStringAsFixed(3);
            imperial.text = (double.parse(pound) * 0.000445).toStringAsFixed(3);
            stone.text = (double.parse(pound) * 0.0714).toStringAsFixed(3);
          },
        ),
      );
  Widget _buildounce() => Padding(
        padding: EdgeInsets.symmetric(
            horizontal: SizeConfig.widthMultiplier * 0.5,
            vertical: SizeConfig.heightMultiplier * 0.5),
        child: TextField(
          keyboardType: TextInputType.number,
          controller: ounce,
          style: TextStyle(
              fontSize: SizeConfig.textSizeMultiplier * 3,
              fontWeight: FontWeight.bold),
          decoration: InputDecoration(
            labelText: 'Ounce',
            suffixText: 'oz',
            suffixStyle: TextStyle(
                fontFamily: 'CircularStd-Book.otf',
                fontSize: SizeConfig.textSizeMultiplier * 3),
            labelStyle: TextStyle(fontSize: SizeConfig.textSizeMultiplier * 2),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          onChanged: (ounce) {
            kilogram.text = (double.parse(ounce) * 0.0283).toStringAsFixed(3);
            tonne.text = (double.parse(ounce) * 0.0000284).toStringAsFixed(3);
            gram.text = (double.parse(ounce) * 28.3495).toStringAsFixed(3);
            pound.text = (double.parse(ounce) * 0.0625).toStringAsFixed(3);
            imperial.text = (double.parse(ounce) * 0.000028).toStringAsFixed(3);
            stone.text = (double.parse(ounce) * 0.0045).toStringAsFixed(3);
          },
        ),
      );
  Widget _buildimperial() => Padding(
        padding: EdgeInsets.symmetric(
            horizontal: SizeConfig.widthMultiplier * 0.5,
            vertical: SizeConfig.heightMultiplier * 0.5),
        child: TextField(
          keyboardType: TextInputType.number,
          controller: imperial,
          style: TextStyle(
              fontSize: SizeConfig.textSizeMultiplier * 3,
              fontWeight: FontWeight.bold),
          decoration: InputDecoration(
            labelText: 'imperial ton',
            suffixText: 'tons',
            suffixStyle: TextStyle(
                fontFamily: 'CircularStd-Book.otf',
                fontSize: SizeConfig.textSizeMultiplier * 3),
            labelStyle: TextStyle(fontSize: SizeConfig.textSizeMultiplier * 2),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          onChanged: (imperial) {
            kilogram.text =
                (double.parse(imperial) * 1016.05).toStringAsFixed(3);
            tonne.text = (double.parse(imperial) * 1.0161).toStringAsFixed(3);
            ounce.text = (double.parse(imperial) * 35840).toStringAsFixed(3);
            pound.text = (double.parse(imperial) * 2240).toStringAsFixed(3);
            gram.text = (double.parse(imperial) * 1016000).toStringAsFixed(3);
            stone.text = (double.parse(imperial) * 160).toStringAsFixed(3);
          },
        ),
      );
  Widget _buildstone() => Padding(
        padding: EdgeInsets.symmetric(
            horizontal: SizeConfig.widthMultiplier * 0.5,
            vertical: SizeConfig.heightMultiplier * 0.5),
        child: TextField(
          keyboardType: TextInputType.number,
          controller: stone,
          style: TextStyle(
              fontSize: SizeConfig.textSizeMultiplier * 3,
              fontWeight: FontWeight.bold),
          decoration: InputDecoration(
            labelText: 'Stone',
            suffixText: 'stone',
            suffixStyle: TextStyle(
                fontFamily: 'CircularStd-Book.otf',
                fontSize: SizeConfig.textSizeMultiplier * 3),
            labelStyle: TextStyle(fontSize: SizeConfig.textSizeMultiplier * 2),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          onChanged: (stone) {
            kilogram.text = (double.parse(stone) * 6.35).toStringAsFixed(3);
            tonne.text = (double.parse(stone) / 157.473).toStringAsFixed(3);
            ounce.text = (double.parse(stone) * 224).toStringAsFixed(3);
            pound.text = (double.parse(stone) * 14).toStringAsFixed(3);
            imperial.text = (double.parse(stone) / 160).toStringAsFixed(3);
            gram.text = (double.parse(stone) * 6350.29).toStringAsFixed(3);
          },
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Mass Conversion',
          style: TextStyle(
            fontSize: SizeConfig.textSizeMultiplier * 3,
            fontFamily: 'CircularStd-Book.otf',
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.clear_all),
            onPressed: () {
              setState(() {
                gram.text = '';
                kilogram.text = '';
                tonne.text = '';
                ounce.text = '';
                imperial.text = '';
                pound.text = '';
                stone.text = '';
              });
            },
          )
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.3), BlendMode.dstATop),
                fit: BoxFit.cover,
                image: AssetImage('assets/mass.jpg'))),
        child: Container(
          padding: EdgeInsets.symmetric(
              horizontal: SizeConfig.widthMultiplier * 1,
              vertical: SizeConfig.heightMultiplier * 1),
          child: ListView(
            children: <Widget>[
              _buildgram(),
              _buildkilogram(),
              _buildtonne(),
              _buildounce(),
              _buildpound(),
              _buildimperial(),
              _buildstone(),
            ],
          ),
        ),
      ),
    );
  }
}
