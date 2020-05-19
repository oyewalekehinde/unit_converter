import 'package:flutter/material.dart';

import '../size_config.dart';

class FrequencyConversion extends StatefulWidget {
  @override
  _FrequencyConversionState createState() => _FrequencyConversionState();
}

class _FrequencyConversionState extends State<FrequencyConversion> {
  TextEditingController hertz = TextEditingController();
  TextEditingController kiloHertz = TextEditingController();
  TextEditingController megaHertz = TextEditingController();
  TextEditingController gigaHertz = TextEditingController();

  Widget _buildHertz() {
    return Padding(
      padding:  EdgeInsets.symmetric(
          horizontal: SizeConfig.widthMultiplier * 0.5,
          vertical: SizeConfig.heightMultiplier * 0.5),
      child: TextField(
        style: TextStyle(fontSize: SizeConfig.textSizeMultiplier * 3, fontWeight: FontWeight.bold),
        controller: hertz,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
            suffixText: 'Hz',
            suffixStyle:
                TextStyle(fontFamily: 'CircularStd-Book.otf', fontSize: SizeConfig.textSizeMultiplier * 3),
            labelStyle: TextStyle(fontSize: SizeConfig.textSizeMultiplier * 2),
            labelText: 'Hertz',
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))),
        onChanged: (hertz) {
          setState(() {
            kiloHertz.text = (double.parse(hertz) / 1000).toStringAsFixed(2);
            megaHertz.text = (double.parse(hertz) / 1e+6).toStringAsFixed(2);
            gigaHertz.text = (double.parse(hertz) / 1e+9).toStringAsFixed(2);
          });
        },
      ),
    );
  }

  Widget _buildKiloHertz() {
    return Padding(
      padding:  EdgeInsets.symmetric(
          horizontal: SizeConfig.widthMultiplier * 0.5,
          vertical: SizeConfig.heightMultiplier * 0.5),
      child: TextField(
        style: TextStyle(fontSize: SizeConfig.textSizeMultiplier * 3, fontWeight: FontWeight.bold),
        controller: kiloHertz,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
            suffixText: 'KHz',
            suffixStyle:
                TextStyle(fontFamily: 'CircularStd-Book.otf', fontSize: SizeConfig.textSizeMultiplier * 3),
            labelText: 'KiloHertz',
            labelStyle: TextStyle(fontSize: SizeConfig.textSizeMultiplier * 2),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))),
        onChanged: (kiloHertz) {
          hertz.text = (double.parse(kiloHertz) * 1000).toStringAsFixed(2);
          megaHertz.text = (double.parse(kiloHertz) / 1000).toStringAsFixed(2);
          gigaHertz.text = (double.parse(kiloHertz) / 1e+6).toStringAsFixed(2);
        },
      ),
    );
  }

  Widget _buildMegaHertz() {
    return Padding(
      padding:  EdgeInsets.symmetric(
          horizontal: SizeConfig.widthMultiplier * 0.5,
          vertical: SizeConfig.heightMultiplier * 0.5),
      child: TextField(
        controller: megaHertz,
        style: TextStyle(fontSize: SizeConfig.textSizeMultiplier * 3, fontWeight: FontWeight.bold),
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
            suffixText: 'MHz',
            suffixStyle:
                TextStyle(fontFamily: 'CircularStd-Book.otf', fontSize: SizeConfig.textSizeMultiplier * 3),
            labelText: 'MegaHertz',
            labelStyle: TextStyle(fontSize: SizeConfig.textSizeMultiplier * 2),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            )),
        onChanged: (megaHertz) {
          hertz.text = (double.parse(megaHertz) * 1e+6).toStringAsFixed(2);
          kiloHertz.text = (double.parse(megaHertz) * 1000).toStringAsFixed(2);
          gigaHertz.text = (double.parse(megaHertz) / 1000).toStringAsFixed(2);
        },
      ),
    );
  }

  Widget _buildGigaHertz() {
    return Padding(
      padding:  EdgeInsets.symmetric(
          horizontal: SizeConfig.widthMultiplier * 0.5,
          vertical: SizeConfig.heightMultiplier * 0.5),
      child: TextField(
        style: TextStyle(fontSize: SizeConfig.textSizeMultiplier * 3, fontWeight: FontWeight.bold),
        controller: gigaHertz,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
            suffixText: 'GHz',
            suffixStyle:
                TextStyle(fontFamily: 'CircularStd-Book.otf', fontSize: SizeConfig.textSizeMultiplier * 3),
            labelText: 'GigaHertz',
            labelStyle: TextStyle(fontSize: SizeConfig.textSizeMultiplier * 2),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            )),
        onChanged: (gigaHertz) {
          megaHertz.text = (double.parse(gigaHertz) * 1000).toStringAsFixed(2);
          hertz.text = (double.parse(gigaHertz) * 1e+9).toStringAsFixed(2);
          kiloHertz.text = (double.parse(hertz.text) * 1e+6).toStringAsFixed(2);
        },
      ),
    );
  }

 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Frequency Conversion',style: TextStyle(
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
                  hertz.text = '';
                  kiloHertz.text = '';
                  megaHertz.text = '';
                  gigaHertz.text = '';
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
                image: AssetImage('assets/frequency.jpeg'))),
        child: Container(
          padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.widthMultiplier * 1,
          vertical: SizeConfig.heightMultiplier * 1),
          child: ListView(
            children: <Widget>[
              _buildHertz(),
           
              _buildKiloHertz(),
             
              _buildMegaHertz(),
           
              _buildGigaHertz(),
            ],
          ),
        ),
      ),
    );
  }
}
