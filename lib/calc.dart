import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Calc extends StatelessWidget {
  const Calc({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Padding(padding: EdgeInsets.all(20)),
            Icon(
              Icons.offline_bolt,
              color: Colors.orange,
              size: 45,
            ),
            SizedBox(
              height: 10,
            ),
            Center(
                child: Text(
              "Electric Bill",
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.orange,
                  fontWeight: FontWeight.bold),
            )),
            Center(
                child: Text(
              "Calculator",
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.orange,
                  fontWeight: FontWeight.bold),
            )),
            Padding(
              padding: EdgeInsets.only(left: 29),
              child: Text(
                "Units",
                style: TextStyle(
                    fontSize: 21,
                    color: Colors.black.withOpacity(0.8),
                    fontWeight: FontWeight.w300),
              ),
            )
          ],
        ),
      ),
    );
  }
}
