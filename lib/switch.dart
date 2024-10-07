import 'package:flutter/material.dart';
 class SwitchDemo extends StatefulWidget{
  const SwitchDemo ({super.key});
  @override  
  _SwitchDemoState createState()=>_SwitchDemoState();
 }
 class _SwitchDemoState extends State<SwitchDemo>{
  bool _switchValue=false;
  @override
Widget build(BuildContext context){
  return Scaffold(
    appBar: AppBar(
      title: Text("Switch Demo"),
    ),
    body: Center(child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(_switchValue?'Switch is ON':'Switch is OFF',
        ),
        const SizedBox(height: 20),
        Switch(value: _switchValue, onChanged: (bool newValue){
          setState(() {
            _switchValue=newValue;
          });
        },
        ),
      ],
    ),
    ),
  );
}  

 }