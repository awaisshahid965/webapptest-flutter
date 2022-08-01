import 'package:flutter/material.dart';
import 'package:resize/resize.dart';

class ButtonRounded extends StatelessWidget {
  final String title;
  final VoidCallback onClickFun;

  const ButtonRounded({Key? key, required this.onClickFun, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClickFun,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 2.rem, horizontal: 4.rem),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(3.rem)),
          boxShadow: const [
            BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.25),
                spreadRadius: 1,
                blurRadius: 10.0,
                offset: Offset(0.0, 5.0)
            )
          ]
        ),
        child: Text(
          title,
          style: TextStyle(
            color: Colors.black,
            fontSize: 1.8.rem
          ),
        ),
      ),
    );
  }
}
