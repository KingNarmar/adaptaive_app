import 'package:adaptaive_app/screens/widgets/custom_drawer.dart';
import 'package:adaptaive_app/screens/widgets/home_screen_body.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: const CustomDrawer(),
      backgroundColor: const Color(0xffDCDBDC),
      appBar: buildAppbar(context),
      body: const HomeScreenBody(),
    );
  }

  AppBar? buildAppbar(BuildContext context) {
    // increase the width condetion with the padding size to hide the app bar in the same time with changing the layout
    return MediaQuery.of(context).size.width - 32 < 900
        ? AppBar(
            backgroundColor: Colors.black,
            leading: IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                scaffoldKey.currentState!.openDrawer();
              },
              color: Colors.white,
            ),
          )
        : null;
  }
}
