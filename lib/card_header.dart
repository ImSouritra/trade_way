import 'package:flutter/material.dart';
import 'main.dart';


class CardHeader extends StatelessWidget {

  final String headerText;


  CardHeader({
    required this.headerText
  }) {}

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            headerText,
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: secondaryColor,
            ),
          ),
          Flexible(fit: FlexFit.tight, child: SizedBox()),
          GestureDetector(
            onTap: (){print("See more tapped");},
            child: Row(
              children: [
                Text(
                  "See More",
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 16,
                    color: Colors.black54,
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 16,
                  color: Colors.black54,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}