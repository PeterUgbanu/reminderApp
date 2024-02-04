import 'package:flutter/material.dart';

void main() {
  runApp(const CustomApp());
}

class CustomApp extends StatelessWidget {
  const CustomApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Colors.lightBlueAccent,
        ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  color: Colors.black,
                  child: GridView.count(
                      crossAxisCount: 7,
                      crossAxisSpacing: 2,
                      mainAxisSpacing: 2,
                      shrinkWrap: true,
                      padding: const EdgeInsets.all(2),
                      children: List.generate(31, (index) {
                        return MyCard(text: "${index+1}", color: Colors
                            .greenAccent,);
                      }),
                      // const [
                      //   MyCard(text: "A", color: Colors.blueAccent,),
                      //   MyCard(text: 'B', color: Colors.cyanAccent),
                      //   MyCard(text: 'C', color: Colors.greenAccent),
                      //   MyCard(text: 'D', color: Colors.yellowAccent,),
                      //   MyCard(text: 'D', color: Colors.yellowAccent,),
                      //   MyCard(text: 'D', color: Colors.yellowAccent,),
                      //   MyCard(text: 'D', color: Colors.yellowAccent,),
                      //   MyCard(text: 'D', color: Colors.yellowAccent,),
                      //   MyCard(text: 'D', color: Colors.yellowAccent,),
                      //   MyCard(text: 'D', color: Colors.yellowAccent,),
                      //   MyCard(text: 'D', color: Colors.yellowAccent,),
                      //   MyCard(text: 'D', color: Colors.yellowAccent,),
                      //   MyCard(text: 'D', color: Colors.yellowAccent,),
                      //   MyCard(text: 'D', color: Colors.yellowAccent,),
                      //   MyCard(text: 'D', color: Colors.yellowAccent,),
                      //   MyCard(text: 'D', color: Colors.yellowAccent,),
                      //   MyCard(text: 'D', color: Colors.yellowAccent,),
                      //   MyCard(text: 'D', color: Colors.yellowAccent,),
                      //   MyCard(text: 'D', color: Colors.yellowAccent,),
                      //   MyCard(text: 'D', color: Colors.yellowAccent,),
                      //   MyCard(text: 'D', color: Colors.yellowAccent,),
                      //   MyCard(text: 'D', color: Colors.yellowAccent,),
                      //   MyCard(text: 'D', color: Colors.yellowAccent,),
                      //   MyCard(text: 'D', color: Colors.yellowAccent,),
                      //   MyCard(text: 'D', color: Colors.yellowAccent,),
                      //   MyCard(text: 'D', color: Colors.yellowAccent,),
                      //   MyCard(text: 'D', color: Colors.yellowAccent,),
                      //   MyCard(text: 'D', color: Colors.yellowAccent,),
                      //   MyCard(text: 'D', color: Colors.yellowAccent,),
                      //   MyCard(text: 'D', color: Colors.yellowAccent,),
                      //   MyCard(text: 'D', color: Colors.yellowAccent,),
                      // ],
                  ),
                ),
              ],
            )
          ),
        ),
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  final String text;
  final Color color;
  final BorderRadiusGeometry? borderRadius;
  const MyCard({
    Key? key,
    required this.text,
    required this.color,
    this.borderRadius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: color,
          borderRadius: borderRadius,
      ),
      child:  Center(
        child: Text(text, style: const TextStyle(fontSize: 30,),),
      ),
    );
  }
}


