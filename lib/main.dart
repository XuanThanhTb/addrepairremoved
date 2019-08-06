import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Send Data App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('DSend Data', style: TextStyle(color: Colors.black, fontSize: 24),),
          backgroundColor: Colors.yellow,
        ),
        body: AddRepairRemoved(),
      ),
    );
  }
}
class AddRepairRemoved extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return AddRepairRemovedState();
  }
}
class AddRepairRemovedState extends State<AddRepairRemoved>{
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.redAccent,
    );
  }
}