import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {

  const HomeScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    const fontSize30 = TextStyle (fontSize: 30 );
   
    return Scaffold(
      appBar: AppBar( 
        title: const Text (' Hola Lisandris'),
        elevation: 0,
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text('Numero de Clicks', style: fontSize30 ),
              Text('10', style: fontSize30 ),
             ], 
             ),
      ),
         floatingActionButton: FloatingActionButton(
          child: const Icon( Icons.ac_unit_sharp),
            onPressed: () {
               print( 'hola Lis');
            },
        ),
    );
   }
}