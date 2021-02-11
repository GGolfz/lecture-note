// 62130500226 Wisarut Kitticharoenphonngam
// State Management Assignment

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'State Management Assignment',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Configure Size and Radius
  final double fontSize = 30;
  final double boxSize = 200;
  final double borderRadius = 100;
  // Configure Color
  final Color _activeColor = Color(0xFF5FDBA7);
  final Color _activePressColor = Color(0xFF31B482);
  final Color _inactiveColor = Color(0xFFFF3B66);
  final Color _inactivePressColor = Color(0xFFCE4B7D);
  final Color _textColor = Color(0xFFFFFFFF);
  final Color _pressTextColor = Color(0xFFFFF000);

  // Variable for storing state

  bool _active = false;
  bool _onTap = false;

  // For changing active status
  void _handleTap() {
    setState(() {
      _active = !_active;
    });
  }

  // For toggle the hold press
  void _toggleTap(bool val) {
    setState(() {
      _onTap = val;
    });
  }

  // For get current background color
  Color _getCurrentColor() {
    return _onTap
        ? (_active ? _activePressColor : _inactivePressColor)
        : (_active ? _activeColor : _inactiveColor);
  }

  // For get current text color
  Color _getTextColor() {
    return _onTap ? _pressTextColor : _textColor;
  }

  // For get Current text content
  String _getCurrentText() {
    return _onTap ? 'PRESSED' : (_active ? 'Active' : 'Inactive');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "State Management Assignment",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          backgroundColor: _getCurrentColor(),
        ),
        body: Container(
          alignment: Alignment.center,
          child: _buildCustomButton(),
        ));
  }

  Widget _buildCustomButton() {
    return GestureDetector(
      child: Container(
        width: boxSize,
        height: boxSize,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderRadius),
            color: _getCurrentColor()),
        child: Text(
          _getCurrentText(),
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: fontSize,
              color: _getTextColor()),
        ),
      ),
      onTap: _handleTap,
      onTapDown: (_) => _toggleTap(true),
      onTapUp: (_) => _toggleTap(false),
    );
  }
}
