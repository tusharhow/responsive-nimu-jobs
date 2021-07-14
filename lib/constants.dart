import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return DeskTop();
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return DeskTop();
        } else {
          return Mobile();
        }
      },
    );
  }
}

class DeskTop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 1600),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
            child: Text(
              'NimuSoft Labs',
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Home',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              SizedBox(
                width: 25,
              ),
              Text(
                'About Us',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              SizedBox(
                width: 25,
              ),
              Text(
                'Contact Us',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              SizedBox(
                width: 25,
              ),
              Text(
                'Resume',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              SizedBox(
                width: 25,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Mobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 800),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: SelectableText(
              'NimuSoft Labs',
              style: TextStyle(fontSize: 35, color: Colors.white),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Home',
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
              Text(
                'About Us',
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
              Text(
                'Contact Us',
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
              Text(
                'Resume',
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
            ],
          ),
          SizedBox(
            height: 60,
          ),
          Container(
            height: 250,
            width: 350,
            decoration: BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.circular(16),
            ),
          ),
        ],
      ),
    );
  }
}
