import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
     
        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text("Inherited"),),
        body: Center(
          child: DemoInhertitedWidget(child:OngBa()),
           ),
      ),

    );
  }
}

class DemoInhertitedWidget extends InheritedWidget {
  DemoInhertitedWidget({Widget child}): super(child:child);
  int a =1000;


  @override
  bool updateShouldNotify(DemoInhertitedWidget old) {
    return true;
  }

}



class OngBa extends StatelessWidget {
  int count =12;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ChaMe(),
    );
  }

  OngBa();
}
class ChaMe extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ConTrai(),
    );
  }
}
class ConTrai extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    OngBa ongBa = context.findAncestorWidgetOfExactType();
    DemoInhertitedWidget demoInhertitedWidget = context.dependOnInheritedWidgetOfExactType(aspect: DemoInhertitedWidget);
    return Center(
      child: Container(
        child: Text(demoInhertitedWidget.a.toString(),style: TextStyle(fontSize: 40),)
      ),
    );
  }
}



