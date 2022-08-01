import 'package:flutter/material.dart';
import 'package:resize/resize.dart';
import 'package:invert_colors/invert_colors.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  Widget NavbarItems(context) {
    if(MediaQuery.of(context).size.width < 600) {
      return InkWell(
        onTap: () => Scaffold.of(context).openDrawer(),
        child: Icon(
          Icons.menu,
          color: Colors.white,
          size: 3.4.rem,
        ),
      );
    } else {
      return Expanded(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const TextItem(
              title: "Home",
            ),
            SizedBox(width: 2.rem),
            const TextItem(
              title: "About",
            ),
            SizedBox(width: 2.rem),
            const TextItem(
              title: "Contact Us",
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 3.rem, horizontal: 3.rem),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MediaQuery.of(context).size.width < 600 ? MainAxisAlignment.spaceBetween : MainAxisAlignment.start,
        children: [
          SizedBox(
            width: 15.rem,
            height: 5.rem,
            child: const InvertColors(
              child: Image(
                image: AssetImage('assets/bat.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),

          // NavBar Items
          NavbarItems(context),
        ],
      ),
    );
  }
}

class TextItem extends StatelessWidget {
  final String title;
  const TextItem({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 16.0,
          color: Colors.white,
          fontWeight: FontWeight.w300
        ),
      ),
    );
  }
}
