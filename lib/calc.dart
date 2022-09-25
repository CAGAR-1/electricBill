import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Calc extends StatefulWidget {
  const Calc({super.key});

  @override
  State<Calc> createState() => _CalcState();
}

class _CalcState extends State<Calc> {
  double units = 0.0;
  double rate = 0.0;
  double sums = 0.0;

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
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Units",
                style: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 28),
              child: Center(
                child: TextField(
                  onChanged: (value) {
                    setState(() {
                      units = double.parse(value);
                    });
                  },
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.double_arrow),
                      hintText: "Enter Units of bill in (KW)",
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Rate",
                style: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 28),
              child: Center(
                child: TextField(
                  onChanged: (value) {
                    setState(() {
                      rate = double.parse(value);
                    });
                  },
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.double_arrow),
                      hintText: "Enter Rate per unit",
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: InkWell(
                onTap: () {
                  setState(() {
                    sums = units * rate;
                  });
                },
                child: Container(
                  height: 50,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Center(
                      child: Text(
                    "Calculate",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 50),
              height: 120,
              width: 0.6,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.orange),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      "Total Bill",
                      style: TextStyle(
                          color: Colors.black.withOpacity(0.7),
                          fontSize: 20,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Rs${sums.toStringAsFixed(2)}',
                      style: TextStyle(
                          color: Colors.black.withOpacity(0.7),
                          fontSize: 22,
                          fontWeight: FontWeight.w700))
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
                child: Text(
              " CREATE BY SomeOne :)",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            )),
          ],
        ),
      ),
    );
  }
}
