import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:trade_way/reusable_card.dart';
import 'package:trade_way/single_carousel_section.dart';
import 'package:trade_way/top_card.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 200.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[CustomCard(name: "Nifty Bank", pointsGained: 455)],
            ),
          ),
          SingleCarouselSection(
            sectionHeader: 'Top Trending',
            items: [
              ReusableCard(
                icon: FontAwesomeIcons.ship,
                stockName: "Adani Ports",
                percentage: "+5.0%",
                arrow: FontAwesomeIcons.arrowDown,
                arrowColor: Colors.green,
                ltp: "673.00",
                priceChange: "+43.0", percentageColor: Colors.green, priceChangeTextColor: Colors.green,),
            ],
          ),
          SingleCarouselSection(
            sectionHeader: 'Top Gainers',
            items: [
              ReusableCard(
                  icon: FontAwesomeIcons.apple,
                  stockName: "Apple INC.",
                  percentage: "+2.5%",
                  arrow: FontAwesomeIcons.arrowUp,
                  arrowColor: Colors.green,
                  ltp: "909.00",
                  priceChange: "+50.0", percentageColor: Colors.green, priceChangeTextColor: Colors.green,),
            ],
          ),
          SingleCarouselSection(
            sectionHeader: 'Top Losers',
            items: [
              ReusableCard(
                  icon: FontAwesomeIcons.google,
                  stockName: "Alphabet INC.",
                  percentage: "-2.5%",
                  arrow: FontAwesomeIcons.arrowDown,
                  arrowColor: Colors.red,
                  ltp: "756.00",
                  priceChange: "-50.0", percentageColor: Colors.red, priceChangeTextColor: Colors.red,),
            ],
          ),
        ],
      ),
    );
  }
}
