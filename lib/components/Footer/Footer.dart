import 'package:flutter/material.dart';
import 'package:resize/resize.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            color: Colors.black,
            padding: EdgeInsets.symmetric(vertical: 2.rem, horizontal: 3.rem),
            child: const Text.rich(
              textAlign: TextAlign.center,
              TextSpan(
                text: "Made by ",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
                  textBaseline: TextBaseline.ideographic,
                  letterSpacing: 1.0,
                  fontSize: 14.0
                ),
                children: <InlineSpan>[
                  TextSpan(text: "Muhammad Awais ", style: TextStyle(color: Colors.teal)),
                  TextSpan(text: "with ", style: TextStyle(color: Colors.white)),
                  WidgetSpan(
                    child: Icon(Icons.favorite, color: Colors.pink),
                    alignment: PlaceholderAlignment.middle
                  ),
                ]
              ),
            ),
          ),
        ),
      ],
    );
  }
}

