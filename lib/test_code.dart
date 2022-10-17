import 'package:flutter/material.dart';


class TestCode extends StatelessWidget {
  const TestCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Material(
          clipBehavior: Clip.antiAlias,
          shape: BeveledRectangleBorder(
            // side: BorderSide(color: Colors.blue), if you need
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  bottomRight: Radius.circular(20.0))),
          child: Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              color: Colors.red,
              //borderRadius: BorderRadius.circular(15.0),
            ),
          ),
        ),
      ),
    );
  }
}
