import 'package:flatra/utils/colors.dart';
import 'package:flatra/utils/layouts.dart';
import 'package:flutter/material.dart';

class EnterPinPad extends StatelessWidget {
  final Function(String) onNumberSelected;

  EnterPinPad({required this.onNumberSelected});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.height * 0.11,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              buildNumber(1.toString()),
              buildNumber(2.toString()),
              buildNumber(3.toString()),
            ],
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.11,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              buildNumber(4.toString()),
              buildNumber(5.toString()),
              buildNumber(6.toString()),
            ],
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.11,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              buildNumber(7.toString()),
              buildNumber(8.toString()),
              buildNumber(9.toString()),
            ],
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.11,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              buildCancelspace('cancel'.toString()),
              buildNumber(0.toString()),
              buildBackspace('backspace'.toString()),
            ],
          ),
        ),
      ],
    );
  }

  Widget buildNumber(String value) {
    return SizedBox(
      width: 80,
      child: GestureDetector(
        onTap: () {
          onNumberSelected(value);
        },
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            decoration: const BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.all(
                Radius.circular(30),
              ),
            ),
            child: Center(
              child: Text(
                value.toString(),
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildBackspace(String value) {
    return SizedBox(
      width: 80,
      child: GestureDetector(
        onTap: () {
          onNumberSelected(value);
        },
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Container(
            decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.all(
                Radius.circular(30),
              ),
            ),
            child: Center(
              child: Icon(
                Icons.backspace,
                size: 28,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildCancelspace(String cancelSpace) {
    return SizedBox(
      width: 80,
      child: GestureDetector(
        onTap: () {
          onNumberSelected(cancelSpace);
        },
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.all(
                Radius.circular(30),
              ),
            ),
            child: Center(
              child: Icon(
                Icons.cancel,
                size: 28,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
