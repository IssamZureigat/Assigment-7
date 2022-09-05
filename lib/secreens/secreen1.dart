
import 'package:flutter/material.dart';
import 'package:assi7/main.dart';

class secreen_1 extends StatefulWidget {
  const secreen_1({super.key});

  @override
  State<secreen_1> createState() => _secreen_1State();
}

class _secreen_1State extends State<secreen_1> {
  List myitems = ["E200", "E300", "E500", "S280", "S320", "S500"];
  String selecteditem = "E200";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(actions: [Icon(Icons.car_repair_outlined)],
          title: Text("CAR models"),
          backgroundColor: Colors.black,
        ),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              "Welcom in Page 1",
              style: TextStyle(fontSize: 30),
            ),
            ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red),
                ),
                onPressed: () {
                  setState(() {
                    Navigator.pop(context, MaterialPageRoute(
                      builder: (context) {
                        return MyApp();
                      },
                    ));
                  });
                },
                child: Text("Back to home", style: TextStyle(fontSize: 30))),
            DropdownButton(
              value: selecteditem,
              dropdownColor: Colors.amber,
              items: myitems
                  .map((e) => DropdownMenuItem(
                        value: e,
                        child: Text("${e}"),
                      ))
                  .toList(),
              onChanged: (val) {setState(() {
                selecteditem = val.toString();
              });},
            )
          ]),
        ));
  }
}
