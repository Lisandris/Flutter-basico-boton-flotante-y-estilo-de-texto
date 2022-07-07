import 'package:flutter/material.dart';


class CounterScreen extends StatefulWidget {

  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

  int counter = 15;

  @override
  Widget build(BuildContext context) {

    const fontSize30 = TextStyle (fontSize: 30 );
    
    return Scaffold(
      appBar: AppBar( 
        title: const Text (' CounterScreen'),
        elevation: 0,
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Numero de Clicks', style: fontSize30 ),
              Text('$counter', style: fontSize30 ),
             ], 
             ),
      ),
         floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked, 
         floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.center,
           children: [

             FloatingActionButton(
              child: const Icon( Icons.exposure_plus_1_sharp ),
                onPressed: () {

                   counter++;
                   setState(() {});
                },
        ),

             FloatingActionButton(
              child: const Icon( Icons.exposure_zero_sharp ),
                onPressed: () {

                   counter:--;
                   setState(() {});
                },
        ),
        SizedBox( width:0.5 ),

        FloatingActionButton(
              child: const Icon( Icons.exposure_minus_1_outlined ),
                onPressed: () {

                   counter--;
                   setState(() {});
                },
        ),
           ],
         ),
    );
   }
}