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
          title: Text('Add Repair Removed', style: TextStyle(color: Colors.black, fontSize: 24),),
          backgroundColor: Colors.yellow,
        ),
        body: AddRepairRemoved(),
      ),
    );
  }
}
// ignore: must_be_immutable
class AddRepairRemoved extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return AddRepairRemovedState();
  }
}
class AddRepairRemovedState extends State<AddRepairRemoved>{
  var list = List.generate(30, (item) => Data('$item'));
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: ListView.builder(itemCount: list.length,
         itemBuilder: (BuildContext context, int index){
           final items = list[index].number;
           return Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: <Widget>[
               Dismissible(
                key: Key(items),
                direction: DismissDirection.horizontal,
                onDismissed: (direction){
                  setState(() {
                    // items.removeAt(index);
                    Scaffold.of(context).showSnackBar(SnackBar(backgroundColor: Colors.yellow, content: Text('$item dismissed'),));
                  });
                },
              child: Text('$items', textAlign: TextAlign.center, style: TextStyle(color: Colors.black, fontSize: 24),),
              ),
              Container(
                color: Colors.red,
              )
             ],
           );
         },
      ),
    );
  }
}

class Data{
  String number;
  Data(this.number);
}