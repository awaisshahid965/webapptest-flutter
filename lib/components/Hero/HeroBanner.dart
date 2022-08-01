import 'package:flutter/material.dart';
import 'package:resize/resize.dart';

// widgets imports
import 'package:webapptest/partials/ButtonRounded.dart';
import 'package:webapptest/components/Navbar/NavBar.dart';

class HeroBanner extends StatelessWidget {
  const HeroBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: Colors.redAccent,
      child: Stack(
        children: <Widget>[
          // background image
          Container(
            width: double.infinity,
            height: double.infinity,
            // styling
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/hero.jpg'),
                fit: BoxFit.cover,
              ),
              color: Colors.amber,
            ),
          ),

          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 10.0),
                   child: Text(
                    "A Suski Blue Color Background!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 4.0.rem,
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                    ),
                ),
                 ),

                SizedBox(height: 30,),

                ButtonRounded(
                  title: "Click Me...",
                  onClickFun: () {
                    // Scaffold.of(context).openDrawer();
                  }
                ),
              ],
            ),
          ),

          // Navbar
          const Positioned(
            top: 0,
            left: 20,
            right: 20,
            child: NavBar(),
          ),
        ],
      ),
    );
  }
}
