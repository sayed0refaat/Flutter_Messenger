
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class MessengerScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        titleSpacing: 20.0,
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Row(
          children: [
            CircleAvatar(
              radius: 20.0,
              backgroundImage: NetworkImage('https://www.google.com/imgres?q=photos&imgurl=https%3A%2F%2Fstatic.vecteezy.com%2Fvite%2Fassets%2Fphoto-masthead-375-BoK_p8LG.webp&imgrefurl=https%3A%2F%2Fwww.vecteezy.com%2Ffree-photos&docid=ibTdn4unYxO9nM&tbnid=7F8_kUgVrrg0YM&vet=12ahUKEwiB94uj2viSAxW4SUEAHUMNFXQQnPAOegQIHxAB..i&w=750&h=864&hcb=2&ved=2ahUKEwiB94uj2viSAxW4SUEAHUMNFXQQnPAOegQIHxAB'),
            ),
            SizedBox(
                width: 20.0),
            Text(
              'chats',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: (){},
            icon: CircleAvatar(
              radius: 25.0,
              backgroundColor: Colors.cyan,
              child: Icon(
              Icons.camera_alt,
                size: 16.0,
                color: Colors.white,

          ),
            ),
          ),
          IconButton(
            onPressed: (){},
            icon: CircleAvatar(
              radius: 25.0,
              backgroundColor: Colors.cyan,
              child: Icon(
                Icons.edit,
                size: 16.0,
                color: Colors.white,

              ),
            ),
          ),
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6.0,),
                  color: Colors.grey[300],

                ),
                padding: EdgeInsets.all(5.0),
                child: Row(
                  children: [
                    Icon(
                        Icons.search,
                    ),
                    SizedBox(
                      width: 15.0,
                     ),
                    Text(
                      'Search',
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Container(
                height: 120.0,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder:(context,index) =>buildStoryItem(),
                  separatorBuilder: (context, index) => SizedBox(width: 12.0,),
                  itemCount: 7,
                ),
              ),
              SizedBox(
                height: 15.0,
              ),

              ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) =>BuildChatIcon()  ,
                  separatorBuilder: (context, index) => SizedBox(height: 12.0,),
                  itemCount: 10
              ),
            ],
          ),
        ),
      ),

    );
  }
  Widget buildStoryItem() =>Container(
    width: 60.0,

    child: Column(
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            CircleAvatar(
              radius: 30.0,
              backgroundImage: NetworkImage('https://www.google.com/imgres?q=photos&imgurl=https%3A%2F%2Fstatic.vecteezy.com%2Fvite%2Fassets%2Fphoto-masthead-375-BoK_p8LG.webp&imgrefurl=https%3A%2F%2Fwww.vecteezy.com%2Ffree-photos&docid=ibTdn4unYxO9nM&tbnid=7F8_kUgVrrg0YM&vet=12ahUKEwiB94uj2viSAxW4SUEAHUMNFXQQnPAOegQIHxAB..i&w=750&h=864&hcb=2&ved=2ahUKEwiB94uj2viSAxW4SUEAHUMNFXQQnPAOegQIHxAB'),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(
                bottom: 3.0,
                end: 3.0,
              ),
              child: CircleAvatar(
                radius: 5.0,
                backgroundColor: Colors.green,
              ),
            ),

          ],
        ),
        SizedBox(height: 5.0),
        Text(
          'Sayed Refaat sayed',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    ),
  );
  Widget BuildChatIcon() =>Row(
    children: [
      Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          CircleAvatar(
            radius: 30.0,
            backgroundImage: NetworkImage('https://www.google.com/imgres?q=photos&imgurl=https%3A%2F%2Fstatic.vecteezy.com%2Fvite%2Fassets%2Fphoto-masthead-375-BoK_p8LG.webp&imgrefurl=https%3A%2F%2Fwww.vecteezy.com%2Ffree-photos&docid=ibTdn4unYxO9nM&tbnid=7F8_kUgVrrg0YM&vet=12ahUKEwiB94uj2viSAxW4SUEAHUMNFXQQnPAOegQIHxAB..i&w=750&h=864&hcb=2&ved=2ahUKEwiB94uj2viSAxW4SUEAHUMNFXQQnPAOegQIHxAB'),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(
              bottom: 3.0,
              end: 3.0,
            ),
            child: CircleAvatar(
              radius: 5.0,
              backgroundColor: Colors.green,
            ),
          ),

        ],
      ),
      SizedBox(
        width: 25.0,
      ),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(

              'Sayed Refaat ',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight:FontWeight.bold ,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(
              height: 5.0,
            ),
            Row(

              children: [
                Expanded(
                  child: Text(
                    'message received message received message received message received ',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Container(
                    width: 7.0,
                    height: 7.0,
                    decoration: BoxDecoration(
                      color:Colors.cyan,
                      shape:BoxShape.circle,
                    ),
                  ),
                ),
                Text(
                  '11:58 AM',
                  //maxLines: 1,
                  //overflow: TextOverflow.ellipsis,
                ),
              ],
            ),

          ],
        ),
      ),
    ],
  );

  /*
  Widget BuildChatIcon(){
    return  Row(
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            CircleAvatar(
              radius: 30.0,
              backgroundImage: NetworkImage('https://www.google.com/imgres?q=photos&imgurl=https%3A%2F%2Fstatic.vecteezy.com%2Fvite%2Fassets%2Fphoto-masthead-375-BoK_p8LG.webp&imgrefurl=https%3A%2F%2Fwww.vecteezy.com%2Ffree-photos&docid=ibTdn4unYxO9nM&tbnid=7F8_kUgVrrg0YM&vet=12ahUKEwiB94uj2viSAxW4SUEAHUMNFXQQnPAOegQIHxAB..i&w=750&h=864&hcb=2&ved=2ahUKEwiB94uj2viSAxW4SUEAHUMNFXQQnPAOegQIHxAB'),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(
                bottom: 3.0,
                end: 3.0,
              ),
              child: CircleAvatar(
                radius: 5.0,
                backgroundColor: Colors.green,
              ),
            ),

          ],
        ),
        SizedBox(
          width: 25.0,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(

                'Sayed Refaat ',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight:FontWeight.bold ,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(
                height: 5.0,
              ),
              Row(

                children: [
                  Expanded(
                    child: Text(
                      'message received message received message received message received ',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Container(
                      width: 7.0,
                      height: 7.0,
                      decoration: BoxDecoration(
                        color:Colors.cyan,
                        shape:BoxShape.circle,
                      ),
                    ),
                  ),
                  Text(
                    '11:58 AM',
                    //maxLines: 1,
                    //overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),

            ],
          ),
        ),
      ],
    );
  }
*/
}



