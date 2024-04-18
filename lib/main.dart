import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  bool enabled = false;
  String stateText = "disable";
  void chageCheck(){
    if (enabled) {
      stateText = "disable";
      enabled = false;
    } else {
      stateText = "enable";
      enabled = true;
    }
  }

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Stateless Test'),
        ),
        body: Center(
            child:Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: (enabled ?  const Icon(Icons.check_box, size : 20,):
                        const Icon(Icons.check_box_outline_blank, size: 20,)),
                  color: Colors.red,
                  onPressed: chageCheck,
                ),
                Container(
                  padding: const EdgeInsets.only(left:16),
                  child: Text('$stateText', style: const TextStyle(fontSize: 32,
                  fontWeight: FontWeight.bold),),
                ),
              ],
            ),)
      ),
    );
  }
}