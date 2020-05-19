import 'package:flutter/material.dart';

import '../size_config.dart';

class SpeedConversion extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SpeedConversionState();
}

class _SpeedConversionState extends State<SpeedConversion> {
  TextEditingController mps = TextEditingController();
  TextEditingController kph = TextEditingController();
  TextEditingController fps = TextEditingController();
  TextEditingController mileshour = TextEditingController();
  TextEditingController knot = TextEditingController();

  Widget _buildmps() {
    return 
        Padding(
          padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.widthMultiplier * 0.5,
          vertical: SizeConfig.heightMultiplier * 0.5),
          child: TextField(
            controller: mps,
            keyboardType: TextInputType.number,
            style: TextStyle(fontSize: SizeConfig.textSizeMultiplier * 3, fontWeight: FontWeight.bold),
            decoration: InputDecoration(
              suffixStyle:
                  TextStyle(fontFamily: 'CircularStd-Book.otf', fontSize: SizeConfig.textSizeMultiplier * 3),
              suffixText: 'm/s',
              labelText: 'Metre per second',
              labelStyle: TextStyle(fontSize: SizeConfig.textSizeMultiplier * 2),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            onChanged: (mps) {
              setState(() {
                kph.text = (double.parse(mps) * 3.6).toStringAsFixed(2);
                fps.text = (double.parse(mps) * 3.281).toStringAsFixed(2);
                mileshour.text = (double.parse(mps) * 2.237).toStringAsFixed(2);
                knot.text = (double.parse(mps) * 1.944).toStringAsFixed(2);
              });
            },
       
    ),
        );
  }

  Widget _buildkph() {
    return 
        Padding(
          padding:EdgeInsets.symmetric(
          horizontal: SizeConfig.widthMultiplier * 0.5,
          vertical: SizeConfig.heightMultiplier * 0.5),
          child: TextField(
            controller: kph,
            keyboardType: TextInputType.number,
            style: TextStyle(fontSize: SizeConfig.textSizeMultiplier * 3, fontWeight: FontWeight.bold),
            decoration: InputDecoration(
              suffixStyle:
                  TextStyle(fontFamily: 'CircularStd-Book.otf', fontSize: SizeConfig.textSizeMultiplier * 3),
              labelText: 'Kilometre per hour',
              suffixText: 'km/h',
              labelStyle: TextStyle(fontSize: SizeConfig.textSizeMultiplier * 2),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            onChanged: (kph) {
              mps.text = (double.parse(kph) / 3.6).toStringAsFixed(2);
              fps.text = (double.parse(kph) / 1.097).toStringAsFixed(2);
              mileshour.text = (double.parse(kph) / 1.609).toStringAsFixed(2);
              knot.text = (double.parse(kph) / 1.852).toStringAsFixed(2);
            },
       
    ),
        );
  }

  Widget _buildfps() {
    return 
        Padding(
          padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.widthMultiplier * 0.5,
          vertical: SizeConfig.heightMultiplier * 0.5),
          child: TextField(
            controller: fps,
            keyboardType: TextInputType.number,
            style: TextStyle(fontSize: SizeConfig.textSizeMultiplier * 3, fontWeight: FontWeight.bold),
            decoration: InputDecoration(
              suffixStyle:
                  TextStyle(fontFamily: 'CircularStd-Book.otf', fontSize: SizeConfig.textSizeMultiplier * 3),
              labelText: 'Foot per second',
              suffixText: 'ft/s',
              labelStyle: TextStyle(fontSize: SizeConfig.textSizeMultiplier * 2),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            onChanged: (fps) {
              mps.text = (double.parse(fps) / 3.281).toStringAsFixed(2);
              kph.text = (double.parse(fps) * 1.097).toStringAsFixed(2);
              mileshour.text = (double.parse(fps) / 1.467).toStringAsFixed(2);
              knot.text = (double.parse(fps) / 1.688).toStringAsFixed(2);
            },
       
    ),
        );
  }

  Widget _buildmileshour() {
    return 
        Padding(
          padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.widthMultiplier * 0.5,
          vertical: SizeConfig.heightMultiplier * 0.5),
          child: TextField(
            controller: mileshour,
            keyboardType: TextInputType.number,
            style: TextStyle(fontSize: SizeConfig.textSizeMultiplier * 3, fontWeight: FontWeight.bold),
            decoration: InputDecoration(
              suffixStyle:
                  TextStyle(fontFamily: 'CircularStd-Book.otf', fontSize: SizeConfig.textSizeMultiplier * 3),
              suffixText: 'mph',
              labelText: 'Miles per hour',
              labelStyle: TextStyle(fontSize: SizeConfig.textSizeMultiplier * 2),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            onChanged: (mileshour) {
              mps.text = (double.parse(mileshour) / 2.237).toStringAsFixed(2);
              kph.text = (double.parse(mileshour) * 1.609).toStringAsFixed(2);
              fps.text = (double.parse(mileshour) * 1.467).toStringAsFixed(2);
              knot.text = (double.parse(mileshour) / 1.151).toStringAsFixed(2);
            },
       
    ),
        );
  }

  Widget _buildknot() {
    return 
        Padding(
          padding:EdgeInsets.symmetric(
          horizontal: SizeConfig.widthMultiplier * 0.5,
          vertical: SizeConfig.heightMultiplier * 0.5),
          child: TextField(
            controller: knot,
            keyboardType: TextInputType.number,
            style: TextStyle(fontSize: SizeConfig.textSizeMultiplier * 3, fontWeight: FontWeight.bold),
            decoration: InputDecoration(
              suffixStyle:
                  TextStyle(fontFamily: 'CircularStd-Book.otf', fontSize: SizeConfig.textSizeMultiplier * 3),
              suffixText: 'kt',
              labelText: 'Knot',
              labelStyle: TextStyle(fontSize: SizeConfig.textSizeMultiplier * 2),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            onChanged: (knot) {
              mps.text = (double.parse(knot) / 1.944).toStringAsFixed(2);
              kph.text = (double.parse(knot) * 1.852).toStringAsFixed(2);
              fps.text = (double.parse(knot) * 1.688).toStringAsFixed(2);
              mileshour.text = (double.parse(knot) * 1.151).toStringAsFixed(2);
            },
       
    ),
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Speed Conversion',
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
                mps.text = '';
                kph.text = '';
                mileshour.text = '';
                knot.text = '';
                fps.text = '';
              });
            },
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.2), BlendMode.dstATop),
                fit: BoxFit.cover,
                image: AssetImage('assets/speed.jpg'))),
        child: Container(
          padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.widthMultiplier * 1,
          vertical: SizeConfig.heightMultiplier * 1),
          child: ListView(
            children: <Widget>[
              _buildmps(),
              _buildkph(),
              _buildfps(),
              _buildmileshour(),
              _buildknot(),
            ],
          ),
        ),
      ),
    );
  }
}
