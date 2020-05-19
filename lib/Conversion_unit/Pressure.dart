import 'package:flutter/material.dart';

import '../size_config.dart';

class PressureConversion extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _PressureConversionState();
}

class _PressureConversionState extends State<PressureConversion> {
  TextEditingController atm = TextEditingController();
  TextEditingController bar = TextEditingController();
  TextEditingController pa = TextEditingController();
  TextEditingController psi = TextEditingController();
  TextEditingController torr = TextEditingController();

  Widget _buildatm() {
    return 
        Padding(
          padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.widthMultiplier * 0.5,
          vertical: SizeConfig.heightMultiplier * 0.5),
          child: TextField(
            controller: atm,
            keyboardType: TextInputType.number,
            style: TextStyle(fontSize:SizeConfig.textSizeMultiplier * 3, fontWeight: FontWeight.bold),
            decoration: InputDecoration(
              suffixStyle:
                  TextStyle(fontFamily: 'CircularStd-Book.otf', fontSize:SizeConfig.textSizeMultiplier * 3),
              suffixText: 'atm',
              labelText: 'Atmosphere',
              labelStyle: TextStyle(fontSize: SizeConfig.textSizeMultiplier * 2),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            onChanged: (atm) {
              setState(() {
                bar.text = (double.parse(atm) * 1.01325).toStringAsFixed(3);
                pa.text = (double.parse(atm) * 101325).toStringAsFixed(3);
                psi.text = (double.parse(atm) * 14.6959).toStringAsFixed(3);
                torr.text = (double.parse(atm) * 760).toStringAsFixed(3);
              });
            },
          
    ),
        );
  }

  Widget _buildbar() {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.widthMultiplier * 0.5,
          vertical: SizeConfig.heightMultiplier * 0.5),
      child: TextField(
        controller: bar,
        keyboardType: TextInputType.number,
        style: TextStyle(fontSize:SizeConfig.textSizeMultiplier * 3, fontWeight: FontWeight.bold),
        decoration: InputDecoration(
          suffixStyle:
              TextStyle(fontFamily: 'CircularStd-Book.otf', fontSize:SizeConfig.textSizeMultiplier * 3),
          suffixText: 'bar',
          labelText: 'Bar',
          labelStyle: TextStyle(fontSize: SizeConfig.textSizeMultiplier * 2),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        onChanged: (bar) {
          atm.text = (double.parse(bar) * 0.986923).toStringAsFixed(3);
          pa.text = (double.parse(bar) * 100000).toStringAsFixed(3);
          psi.text = (double.parse(bar) * 14.5038).toStringAsFixed(3);
          torr.text = (double.parse(bar) * 750.062).toStringAsFixed(3);
        },
      ),
    );
  }

  Widget _buildpa() {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.widthMultiplier * 0.5,
          vertical: SizeConfig.heightMultiplier * 0.5),
      child: TextField(
        controller: pa,
        keyboardType: TextInputType.number,
        style: TextStyle(fontSize:SizeConfig.textSizeMultiplier * 3, fontWeight: FontWeight.bold),
        decoration: InputDecoration(
          suffixStyle:
              TextStyle(fontFamily: 'CircularStd-Book.otf', fontSize:SizeConfig.textSizeMultiplier * 3),
          suffixText: 'Pa',
          labelText: 'Pascal',
          labelStyle: TextStyle(fontSize: SizeConfig.textSizeMultiplier * 2),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        onChanged: (pa) {
          atm.text = (double.parse(pa) / 101325).toStringAsFixed(3);
          bar.text = (double.parse(pa) / 100000).toStringAsFixed(3);
          psi.text = (double.parse(pa) / 6894.757).toStringAsFixed(3);
          torr.text = (double.parse(pa) / 133.322).toStringAsFixed(3);
        },
      ),
    );
  }

  Widget _buildpsi() {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.widthMultiplier * 0.5,
          vertical: SizeConfig.heightMultiplier * 0.5),
      child: TextField(
        controller: psi,
        keyboardType: TextInputType.number,
        style: TextStyle(fontSize:SizeConfig.textSizeMultiplier * 3, fontWeight: FontWeight.bold),
        decoration: InputDecoration(
          suffixStyle:
              TextStyle(fontFamily: 'CircularStd-Book.otf', fontSize:SizeConfig.textSizeMultiplier * 3),
          suffixText: 'psi',
          labelText: 'Pound-force per square inch',
          labelStyle: TextStyle(fontSize: SizeConfig.textSizeMultiplier * 2),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        onChanged: (psi) {
          atm.text = (double.parse(psi) * 0.068046).toStringAsFixed(3);
          bar.text = (double.parse(psi) * 0.0689476).toStringAsFixed(3);
          pa.text = (double.parse(psi) * 6894.76).toStringAsFixed(3);
          torr.text = (double.parse(psi) * 51.7149).toStringAsFixed(3);
        },
      ),
    );
  }

  Widget _buildtorr() {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.widthMultiplier * 0.5,
          vertical: SizeConfig.heightMultiplier * 0.5),
      child: TextField(
        controller: torr,
        keyboardType: TextInputType.number,
        style: TextStyle(fontSize:SizeConfig.textSizeMultiplier * 3, fontWeight: FontWeight.bold),
        decoration: InputDecoration(
          suffixStyle:
              TextStyle(fontFamily: 'CircularStd-Book.otf', fontSize:SizeConfig.textSizeMultiplier * 3),
          suffixText: 'torr',
          labelText: 'Torr',
          labelStyle: TextStyle(fontSize: SizeConfig.textSizeMultiplier * 2),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        onChanged: (torr) {
          atm.text = (double.parse(torr) / 760).toStringAsFixed(3);
          bar.text = (double.parse(torr) * 0.00133322).toStringAsFixed(3);
          pa.text = (double.parse(torr) * 133.322).toStringAsFixed(3);
          psi.text = (double.parse(torr) * 0.0193368).toStringAsFixed(3);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pressure Conversion',style: TextStyle(
            fontSize: SizeConfig.textSizeMultiplier * 2.5,
            fontFamily: 'CircularStd-Book.otf',
          ),),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.clear_all),
            onPressed: () {
              setState(() {
                atm.text = '';
                bar.text = '';
                psi.text = '';
                torr.text = '';
                pa.text = '';
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
                image: AssetImage('assets/blood-pressure-monitor.jpg'))),
        child: Container(
          padding: EdgeInsets.symmetric(
              horizontal: SizeConfig.widthMultiplier * 1,
              vertical: SizeConfig.heightMultiplier * 1),
          child: ListView(
            children: <Widget>[
              _buildatm(),
              _buildbar(),
              _buildpa(),
              _buildpsi(),
              _buildtorr(),
            ],
          ),
        ),
      ),
    );
  }
}
