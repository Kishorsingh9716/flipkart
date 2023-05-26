import 'package:flutter/material.dart';

import 'explore_plus.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: Container(
        child: Row(
          children: [
            Container(
              child: Column(
                children: [
                  Text('Flipkart'),
                  Row(
                    children: [
                      TextButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Explore_Plus()));
                      },
                        child: Row(
                          children: [
                            Text("Explore"),
                            Text("Plus"),
                          ],
                        ),),
                    ],
                  )
                ],
              ),
            ),
            Container(
              child: Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search for more",
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide.none,

                    ),

                  ),),),
            ),
          ],
        ),
      ),
    );
  }
}
