import 'package:flutter/material.dart';
import 'package:assi7/main.dart';

class secreen_2 extends StatefulWidget {
  const secreen_2({super.key});

  @override
  State<secreen_2> createState() => _secreen_2State();
}

class _secreen_2State extends State<secreen_2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Page_2"),
          backgroundColor: Colors.black,
        ),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              "Welcom in Page 2",
              style: TextStyle(fontSize: 30),
            ),
            ElevatedButton(style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.red),),

                onPressed: () {
                  setState(() {
                    Navigator.pop(context, MaterialPageRoute(
                      builder: (context) {
                        return MyApp();
                      },
                    ));
                  });
                },
                child: Text("Go back", style: TextStyle(fontSize: 30))),
          ]),
        ));
  }
}
