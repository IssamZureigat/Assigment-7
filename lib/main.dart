import 'package:assi7/secreens/secreen1.dart';
import 'package:flutter/material.dart';
import 'package:assi7/secreens/secreen2.dart';

void main() {
  runApp(MaterialApp(
    home: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Home();
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home_page"),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text("Home page",style: TextStyle(fontSize: 40)),
            ElevatedButton(style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.red),),
                onPressed: () {
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return secreen_1();
                      },
                    ));
                  });
                },
                child: Text(
                  "Page #1",
                  style: TextStyle(fontSize: 30),
                )),

                 ElevatedButton(style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.red),),
                  onPressed: (){setState(() {
                  
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return secreen_2();
                },));
                });}, child:Text("page#2",style: TextStyle(fontSize: 30)))
          ],
        ),
      ),
    );
  }
}
