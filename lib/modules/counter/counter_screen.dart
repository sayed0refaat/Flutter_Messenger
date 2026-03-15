import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 1;

  @override
  void initState() {

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Counter',
        ),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: (){
                setState(() {

                });
                counter--;
              },
              child: Text(
                'MINUS'
              ),
            ),
         //   SizedBox(width: 15.0,),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 50.0,
              ),
              child: TextButton(
                onPressed: (){},
                child: Text(
                    '$counter',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.w900,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            TextButton(
              onPressed: (){
                setState(() {

                });
                counter++;
              },
              child: Text(
                  'PLUS',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
