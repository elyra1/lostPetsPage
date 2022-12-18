import 'package:flutter/material.dart';

class Commentary extends StatelessWidget {
  String author;
  String text;
  String date;

  Commentary(
    String this.author,
    String this.text,
    String this.date, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 17),
      child: Column(children: [
        Container(
          alignment: Alignment.centerLeft,
          child: Text(
            author!,
            style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(top: 7, bottom: 14),
            child: Text(
              text!,
              style: TextStyle(fontSize: 13),
            )),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            date!,
            style: TextStyle(
                fontSize: 12, color: Color.fromRGBO(151, 151, 153, 1)),
          ),
        )
      ]),
    );
  }
}
