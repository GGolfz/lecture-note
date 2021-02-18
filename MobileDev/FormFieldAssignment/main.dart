// Form Field Exercise
// 62130500226 Wisarut Kitticharoenphonngam
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Form Field Exercise',
      theme: ThemeData.dark(),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Form Field Excerise"),
        ),
        body: MyCustomForm());
  }
}

class MyCustomForm extends StatefulWidget {
  @override
  _MyCustomFormState createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _studentIdController = TextEditingController();
  FocusNode focusNode;
  @override
  void initState() {
    focusNode = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _studentIdController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          children: [
            _buildCustomTextFormField("Name", "Wisarut",
                "Please enter your name", _nameController, focusNode),
            _buildCustomTextFormField("StudentID", "62130500226",
                "Please enter your student id", _studentIdController, null),
            TextButton(
                onPressed: () {
                  focusNode.requestFocus();
                  if (_formKey.currentState.validate()) {
                    showDialog(
                        context: context,
                        child: _buildCustomDialog(
                            context,
                            _nameController.text.toString(),
                            _studentIdController.text.toString()));
                  }
                },
                child: Text("Submit"))
          ],
        ));
  }

  Widget _buildCustomDialog(
      BuildContext context, String name, String studentID) {
    double _boxWidthHeight = 200;
    double _fontSize = 18;
    double _paddingSize = 24;
    double _sizedBoxSizeS = 6;
    double _sizedBoxSizeL = 24;
    return Dialog(
        child: Container(
      width: _boxWidthHeight,
      height: _boxWidthHeight,
      padding: EdgeInsets.all(_paddingSize),
      child: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              "Result",
              style:
                  TextStyle(fontSize: _fontSize, fontWeight: FontWeight.bold),
            ),
          ]),
          SizedBox(
            height: _sizedBoxSizeS,
          ),
          Row(children: [
            Text(
              'Name: ' + name,
              style: TextStyle(fontSize: _fontSize),
            ),
          ]),
          SizedBox(
            height: _sizedBoxSizeS,
          ),
          Row(children: [
            Text(
              'StudentID: ' + studentID,
              style: TextStyle(fontSize: _fontSize),
            ),
          ]),
          SizedBox(
            height: _sizedBoxSizeL,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text("Done"))
          ]),
        ],
      ),
    ));
  }

  Widget _buildCustomTextFormField(String labelText, String hintText,
      String alertText, TextEditingController controller, FocusNode focusNode) {
    double _paddingHorizontal = 24;
    double _paddingVertical = 8;
    return Padding(
        padding: EdgeInsets.symmetric(
            horizontal: _paddingHorizontal, vertical: _paddingVertical),
        child: TextFormField(
          focusNode: focusNode,
          decoration: InputDecoration(hintText: hintText, labelText: labelText),
          validator: (value) {
            return value.isEmpty ? alertText : null;
          },
          controller: controller,
        ));
  }
}

