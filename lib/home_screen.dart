import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'input_page.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading:Row(mainAxisAlignment:MainAxisAlignment.spaceAround,children: [Icon(FontAwesomeIcons.magnifyingGlass),Icon(FontAwesomeIcons.solidStar)],),leadingWidth:100,title:Image.asset("images/TRADE_WAY.png",fit: BoxFit.cover,height: 180, width:180,alignment: Alignment.center,),actions:[Icon(FontAwesomeIcons.solidBell),SizedBox(width: 10,)],),
      body: InputPage()

    );
  }
}