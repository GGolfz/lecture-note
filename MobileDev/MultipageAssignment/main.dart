// Multipage Assignment
// 62130500226 Wisarut Kitticharoenphonngam

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      onGenerateRoute: (setting) {
        if (setting.name == '/') {
          return MaterialPageRoute(builder: (context) => HomeScreen());
        }
        if (setting.name == '/text01') {
          return MaterialPageRoute(builder: (context) => Detail1Screen());
        }
        if (setting.name == '/text02') {
          return MaterialPageRoute(builder: (context) => Detail2Screen());
        }
        return MaterialPageRoute(builder: (context) => UnknownScreen());
      },
    );
  }
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final title;
  final hasBack;
  @override
  Size get preferredSize => Size.fromHeight(64);
  CustomAppBar({this.title, this.hasBack = false});
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      leading: hasBack
          ? IconButton(
              icon: Icon(
                Icons.chevron_left,
                size: 36,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            )
          : null,
    );
  }
}

class HomeScreen extends StatelessWidget {
  final textController = TextEditingController();
  final _pageTitle = "Multipage Assignment";
  final _inputStyle = TextStyle(color: Colors.white);
  final _buttonStyle =
      TextStyle(color: Colors.pinkAccent, fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          title: _pageTitle,
        ),
        body: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CupertinoTextField(
                controller: textController,
                style: _inputStyle,
              ),
              CupertinoButton(
                  onPressed: () {
                    if (textController.text.isEmpty) {
                      return;
                    }
                    Navigator.of(context).pushNamed('/${textController.text}');
                  },
                  child: Text(
                    "Go",
                    style: _buttonStyle,
                  ))
            ],
          ),
        ));
  }
}

class Detail1Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          title: 'Detail 1 Screen',
          hasBack: true,
        ),
        body: _buildDetailContent(context, "Text 01"));
  }
}

class Detail2Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          title: 'Detail 2 Screen',
          hasBack: true,
        ),
        body: _buildDetailContent(context, "Text 02"));
  }
}

Widget _buildDetailContent(BuildContext context, String text) {
  final _textStyle =
      TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold);
  final _buttonStyle =
      TextStyle(color: Colors.pinkAccent, fontWeight: FontWeight.bold);
  return Container(
    padding: EdgeInsets.all(20),
    width: double.infinity,
    child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text(
        text,
        style: _textStyle,
      ),
      CupertinoButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text(
            "Back",
            style: _buttonStyle,
          ))
    ]),
  );
}

class UnknownScreen extends StatelessWidget {
  final _textStyle =
      TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold);
  final _buttonStyle =
      TextStyle(color: Colors.pinkAccent, fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          title: 'Unknown Page',
          hasBack: true,
        ),
        body: Container(
          width: double.infinity,
          padding: EdgeInsets.all(20),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              "Unknown Page",
              style: _textStyle,
            ),
            CupertinoButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text(
                  "Back",
                  style: _buttonStyle,
                ))
          ]),
        ));
  }
}

