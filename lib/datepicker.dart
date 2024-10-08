import 'package:flutter/material.dart';

class DatePickerDemo extends StatefulWidget{
  const DatePickerDemo({super.key});
  @override  
  _DatePickerDemoState createState()=> _DatePickerDemoState();
    
  }
  class _DatePickerDemoState extends State<DatePickerDemo>{
    DateTime? selectedDate;
    Future<void>_selectedDate(BuildContext context)async{
      final DateTime? picked=await showDatePicker(context: context,initialDate: DateTime.now(), firstDate: DateTime(2000), lastDate: DateTime(2101)
      );
      if(picked!=null&&picked!=selectedDate){
        setState(() {
          selectedDate=picked;
        });
      }
    }
    @override  
    Widget build(BuildContext context){
      return Scaffold(
        appBar: AppBar(
          title: const Text('Date Picker Demo'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                selectedDate!=null
                ?'Selected Date:${selectedDate!.day}/${selectedDate!.month}/${selectedDate!.year}':'No date selected!',
                style: const TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 20),
              ElevatedButton(onPressed: ()=> _selectedDate(context),
               child: const Text('Selected Date'),
               ),
            ],
          ),
        ),
      );
    }
  }
  
