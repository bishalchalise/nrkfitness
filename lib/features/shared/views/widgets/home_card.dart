import 'package:flutter/material.dart';

class HomeCards extends StatelessWidget {
  final double topPad ;
  final String headText;
  final String mainText;
  final Color cardColor;
  final Color headingColor;
  final Color textColor;
  final String image;
  const HomeCards({
    super.key,
    required this.cardColor,
    required this.mainText,
    required this.headText,
    required this.headingColor,
    required this.textColor,
    required this.image,
    required this.topPad,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: cardColor,
      child: SizedBox(
        height: 131.0,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0, left: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      headText,
                      style: TextStyle(
                        fontSize: 11.0,
                        fontWeight: FontWeight.w500,
                        color: headingColor,
                      ),
                    ),
                    Text(
                      mainText,
                      style: TextStyle(
                          color: textColor,
                          fontSize: 32.0,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding:  EdgeInsets.only(top: topPad),
                  child: Image.asset(image),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
