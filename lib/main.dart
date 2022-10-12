import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            actions:[
              IconButton(visualDensity:VisualDensity(horizontal: -4,vertical: -4),onPressed: (){}, icon: Icon(Icons.search_rounded)),
              IconButton(onPressed: (){}, icon: Icon(Icons.menu)),
              IconButton(onPressed: (){},icon: Icon(Icons.add_alert),)
            ],
            title: Text('하이'),
            centerTitle: true,
            elevation: 0.0
          ),
          body: Align(
            child: Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: 100,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                    Container(
                        child: Image.asset('assets/hapari.png',fit:BoxFit.fitHeight),
                      decoration: BoxDecoration(
                        border: Border.all(width: 1)
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(width: 1)
                      ),
                      child: Column(
                        children: const [
                          Text('제목',style: TextStyle(fontSize: 20)),
                          Text('설명'),
                          Text('으이')
                        ],
                      ),
                    )
                  ],
                ),
              )],
            )
          )
        )
    );
  }
}
