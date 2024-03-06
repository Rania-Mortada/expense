
import 'package:flutter/material.dart';

class timData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedDate = "${now.year}-${now.month}-${now.day}";
    String period = now.hour < 12 ? 'AM' : 'PM';
    int hour = now.hour % 12;
    hour = hour == 0 ? 12 : hour; // Convert 0 to 12 for 12-hour format
    String formattedTime = "$hour:${now.minute} $period";

    return Padding(
      padding: const EdgeInsets.only(left: 50,right: 10),
      child: Row(
        children: [
          Text(
            formattedDate,
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(width: 50,),
          Text(
            formattedTime,
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}
