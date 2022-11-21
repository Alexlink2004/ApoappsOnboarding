import 'package:apoapps_onboarding_screen/sk_onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:apoapps_onboarding_screen/flutter_onboarding.dart';
import 'package:apoapps_onboarding_screen/sk_onboarding_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> with TickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _globalKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      key: _globalKey,
      body: SKOnboardingScreen(
        bgColor: Colors.white,
        themeColor: const Color(0xFFf74269),
        pages: pages,
        skipClicked: (value) {
          print(value);
          // _globalKey.currentState.showSnackBar(SnackBar(
          //   content: Text("Skip clicked"),
          // ));
        },
        getStartedClicked: (value) {
          print(value);
          // _globalKey.currentState.showSnackBar(SnackBar(
          //   content: Text("Get Started clicked"),
          // ));
        },
      ),
    );
  }

  final pages = [
    ApoappsOnboardingModel(
      title: "Learn math",
      description: "Description 1",
      titleColor: Colors.black,
      descripColor: const Color(0xFF929794),
      imagePath: 'assets/education.png',
    ),
    ApoappsOnboardingModel(
      title: "Title 2",
      description: "Description 2",
      titleColor: Colors.black,
      descripColor: const Color(0xFF929794),
      imagePath: 'assets/process.png',
    ),
    ApoappsOnboardingModel(
      title: "Title 3",
      description: "Description 3",
      titleColor: Colors.black,
      descripColor: const Color(0xFF929794),
      imagePath: 'assets/love.png',
    ),
  ];
}
