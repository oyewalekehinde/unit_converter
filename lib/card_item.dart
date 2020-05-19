import 'package:flutter/material.dart';
import 'package:unit_converter/size_config.dart';

class CardItem extends StatelessWidget {
  final String backgroundImage;
  final String cardName;
  final Widget pageRoute;

  CardItem(
      {@required this.backgroundImage,
      @required this.cardName,
      @required this.pageRoute});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(SizeConfig.widthMultiplier * 5),
          ),
          child: Container(
            decoration: BoxDecoration(
              borderRadius:
                  BorderRadius.circular(SizeConfig.widthMultiplier * 5),
              image: DecorationImage(
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.5), BlendMode.dstATop),
                fit: BoxFit.cover,
                image: AssetImage(backgroundImage),
              ),
            ),
            padding: EdgeInsets.symmetric(
                horizontal: SizeConfig.widthMultiplier * 3,
                vertical: SizeConfig.heightMultiplier * 2),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Container(
                    child: Text(
                  cardName,
                  style: TextStyle(
                      fontFamily: "CircularStd-Bold.otf",
                      fontSize: SizeConfig.textSizeMultiplier * 2.5,
                      fontWeight: FontWeight.w900),
                )),
              ],
            ),
          ),
        ),
        onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (BuildContext context) => pageRoute),
            ));
  }
}
