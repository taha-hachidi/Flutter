import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/cards.view.dart';
import 'package:flutter_application_1/screens/home.view.dart';
import 'package:flutter_application_1/screens/profille.view.dart';
import 'package:flutter_application_1/login.page.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currIndex = 0;

  List<Widget> pages = [const HomeView(), const LoginPage(), const cardview(), const profileview()];

  void changepage(int selectedIndex) {
    setState(() {
      currIndex = selectedIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "OUR TITLE",
          style:
              TextStyle(color: Theme.of(context).indicatorColor, fontSize: 24),
        ),
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: IndexedStack(
          index: currIndex,
          children: pages,
        ),
      )),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.amber,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.login), label: "Login"),
          BottomNavigationBarItem(icon: Icon(Icons.map), label: "Cards"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile")
        ],
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.blueGrey,
        currentIndex: currIndex,
        onTap: changepage,
      ),
    );
  }
}
