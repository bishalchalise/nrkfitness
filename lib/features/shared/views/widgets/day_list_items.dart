import 'package:flutter/material.dart';

class DayListItmes extends StatelessWidget {
  final String date;
  final String day;
  const DayListItmes({super.key, required this.day, required this.date});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 77,
      width: 46,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: const Color(0xffF4FED7),
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(color: Colors.transparent),
      ),
      child: Column(
       
        children:  [
        Text(
          date,
          style: const TextStyle(
            fontSize: 14,
            color: Color((0xff6AC868)),
          ),
        ),
        Text(
          day,
          style: const TextStyle(
            color: Color(0xff6AC868),
            fontSize: 10.0,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        const Icon(
          Icons.check_circle,
          size: 20,
          color: Color(0xff6AC868),
        ),
      ]),
    );
  }
}
