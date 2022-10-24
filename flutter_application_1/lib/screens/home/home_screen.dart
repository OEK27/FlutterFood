// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/home/components/menu.dart';
import '../../constant.dart';
import 'components/body.dart';
import 'components/footer.dart';
import 'components/header_container.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(children: [
          DrawerHeader(
            child: Center(
              child: Text(
                "Foodie",
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.w900,
                  color: kSecondaryColor,
                ),
              ),
            ),
          ),
          MobMenu()
        ]),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //header
            HeaderContainer(),
            //body
            BodyContainer(),
            //footer
            SizedBox(
              height: 30,
            ),
            Footer(),
            //now we make our website responsive
          ],
        ),
      ),
    );
  }
}
