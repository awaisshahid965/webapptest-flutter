import 'package:flutter/material.dart';
import 'package:resize/resize.dart';

// components
import 'components/Hero/HeroBanner.dart';
import 'components/Footer/Footer.dart';

void main() {
  runApp(const MyApp());
}

class ResizeWrapper1 extends StatefulWidget {
  const ResizeWrapper1({Key? key}) : super(key: key);

  @override
  State<ResizeWrapper1> createState() => _ResizeWrapper1State();
}

class _ResizeWrapper1State extends State<ResizeWrapper1> {

  double getRemSize(double width) {
    double remSize = 10.0;
    if(width < 768.0) {
      remSize = 8.0;
    }
    if(width < 500.0) {
      remSize = 6.0;
    }
    return remSize;
  }

  @override
  Widget build(BuildContext context) {
    double baseRemSize = getRemSize(MediaQuery.of(context).size.width);
    print(baseRemSize);
    return Resize(
      baseForREM: baseRemSize,
      // baseForREM: MediaQuery.of(context).orientation == Orientation.portrait ? getRemSize(MediaQuery.of(context).size.width) : getRemSize(MediaQuery.of(context).size.width),
      builder: () {
        return const App();
      },
    );
  }
}


class ResizeWrapper extends StatelessWidget {
  const ResizeWrapper({Key? key}) : super(key: key);

  double getRemSize(double width, Orientation or) {
    print('Orientation: ${or}');
    print('Width: ${width}');
    double remSize = 10.0;
    if(width < 768.0) {
      remSize = 9.0;
    }
    if(width < 500.0) {
      remSize = 8.0;
    }
    return remSize;
  }

  @override
  Widget build(BuildContext context) {
    // ResizeUtil().orientation == Orientation.portrait
    if(MediaQuery.of(context).orientation == Orientation.landscape) {
      return Resize(
        baseForREM: getRemSize(
            MediaQuery.of(context).size.width,
            MediaQuery.of(context).orientation
        ),
        builder: () => const App(),
      );
    } else {
      return Resize(
        baseForREM: getRemSize(
            MediaQuery.of(context).size.width,
            MediaQuery.of(context).orientation
        ),
        builder: () => const App(),
      );
    }
  }
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: const SafeArea(child: ResizeWrapper1()),
    );
  }
}
class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            SizedBox(
              height: 15.rem,
              child:  DrawerHeader(
                padding: EdgeInsets.zero,
                child: Container(
                  width: 5.rem,
                  height: 3.rem,
                  padding: EdgeInsets.symmetric(vertical: 2.0.rem, horizontal: 1.rem),
                  decoration: const BoxDecoration(
                    // color: Colors.deepOrange,
                  ),
                  child: const Image(
                    image: AssetImage("assets/bat.png"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            ListTile(
              title: const Text('Home'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('About'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Contact Us'),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            // hero section
            const HeroBanner(),

            Container(
              color: Colors.pinkAccent,
              height: MediaQuery.of(context).size.height,
              child: const Center(
                child: Text(
                    'Second Section',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0
                  ),
                )
              ),
            ),

            // footer
            const Footer(),
          ],
        ),
      )
    );
  }
}


