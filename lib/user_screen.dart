import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserModel{
   final int id;
   final String name;
   final String phone;

   UserModel({
     required this.id,
     required this.name,
     required this.phone
});

}


class UserScreen extends StatelessWidget {

List<UserModel> users=[
  UserModel(id: 1, name: 'mohamed', phone: '0100000'),
  UserModel(id: 2, name: 'kareem', phone: '01111111'),
  UserModel(id: 3, name: 'aly', phone: '01222222'),
  UserModel(id: 1, name: 'mohamed', phone: '0100000'),
  UserModel(id: 2, name: 'kareem', phone: '01111111'),
  UserModel(id: 3, name: 'aly', phone: '01222222'),
  UserModel(id: 1, name: 'mohamed', phone: '0100000'),
  UserModel(id: 2, name: 'kareem', phone: '01111111'),
  UserModel(id: 3, name: 'aly', phone: '01222222'),
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'Users',
        ),
      ),
      body: ListView.separated(
          itemBuilder: (context,index)=> BuildUserItem (users[index]) ,
          separatorBuilder: (context,index)=>Padding(
            padding: const EdgeInsetsDirectional.only(
              start: 30.0,
              end: 30.0,
            ),
            child: Container(
              width: double.infinity,
              height: 1.0,
              color: Colors.cyan[300],
            ),
          ),
          itemCount: users.length,
      ),
    );

  }

  Widget BuildUserItem (UserModel user) =>Padding(
    padding: const EdgeInsets.all(20.0),
    child: Row(
      children: [
        CircleAvatar(

          radius: 25.0,
          child: Text(
           '${user.id}',
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          width: 20.0,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,

          children: [
            Text(
              '${user.name}',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '${user.phone}',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ],
    ),
  ) ;
  //1.build item
  //2.build list
  //3.add items to list
}
