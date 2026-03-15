

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{

@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.menu,
        ),
        title: Text(
          'First APP',
        ),
        actions: [
          IconButton(
            icon:Icon(Icons.notification_important
            ),
            onPressed: ()
            {
              print('NOTIFY');
            },

          ),
          Icon(Icons.search
          ),

        ],
      ),
      body: Column(
        children: [
          Image(
            image: NetworkImage(
              'https://www.istockphoto.com/photos/beautiful-nature'
            ),
          ),
        ],
      ),
    );
  }

}