import 'package:hyundai_togo_ct/sav/main.dart';
import 'package:hyundai_togo_ct/sav/pages/RSA.dart';
import 'package:hyundai_togo_ct/sav/pages/message.dart';
import 'package:hyundai_togo_ct/sav/pages/serviceCost.dart';
import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';

import 'package:hyundai_togo_ct/sav/pages/GIT.dart';
import 'package:hyundai_togo_ct/sav/pages/notification.dart';
import 'package:hyundai_togo_ct/sav/pages/sos.dart';

class Pageh extends StatefulWidget {
  @override
  _PagehState createState() => _PagehState();
}

class _PagehState extends State<Pageh> {

  int _currentIndex = 0;
  PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SizedBox.expand(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() => _currentIndex = index);
          },
          children: <Widget>[
            HomePage(),

            ServiceCost(),

            RSA(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavyBar(
        iconSize: 30,
        selectedIndex: _currentIndex,
        backgroundColor: Colors.white54,
        onItemSelected: (index) {
          setState(() => _currentIndex = index);
          _pageController.jumpToPage(index);
        },
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            icon: Icon(Icons.home),
            title: Text('Accueil',style: TextStyle(fontFamily: 'hyundai'),),
            activeColor: Color.fromRGBO(10, 31, 110, 1),
            inactiveColor: Colors.black,

          ),
          BottomNavyBarItem(
            icon: Icon(Icons.attach_money),
            title: Text('Devis',style: TextStyle(fontFamily: 'hyundai'),),
            activeColor: Color.fromRGBO(10, 31, 110, 1),
            inactiveColor: Colors.black,

          ),
          BottomNavyBarItem(
            icon: ImageIcon(AssetImage("assets/assets/images/sos.png")),
            title: Text('Assistance Routière',style: TextStyle(fontFamily: 'hyundai'),),
            activeColor: Color.fromRGBO(10, 31, 110, 1),
            inactiveColor: Colors.black,
          ),
          BottomNavyBarItem(
            icon: ImageIcon(AssetImage("")),
            title: Text('Message',style: TextStyle(fontFamily: 'hyundai'),),
            activeColor: Color.fromRGBO(10, 31, 110, 1),
            inactiveColor: Colors.grey,
          ),
        ],
      ),
      floatingActionButton: Padding(
        padding: EdgeInsets.only(top: 20),
        child: SizedBox(
          height: 60,
          width: 50,
          child: FloatingActionButton(
            backgroundColor: Colors.transparent,
            elevation: 0,
            onPressed: ()=> Navigator.of(context).push(new MaterialPageRoute(
                builder: (context)=> new ChatScreen())),
            child: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 2),
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  begin: const Alignment(0.5, -0.3),
                  end: const Alignment(0.6, 0.5),
                  colors: [
                    Color.fromRGBO(10, 31, 110, 1),
                    Color.fromRGBO(10, 31, 110, 1),
                  ],
                ),
              ),
              child: ImageIcon(AssetImage("assets/assets/images/asssets/images/chat.png"), color: Colors.white ),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,

    );
  }
}
