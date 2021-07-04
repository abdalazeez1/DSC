import 'package:flutter/material.dart';

class PostWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
       child: Container(
color: Colors.grey[200],
margin: EdgeInsets.all(6),
padding: EdgeInsets.symmetric(vertical: 24,horizontal: 10),
//         margin: EdgeInsets.symmetric(vertical: 24,horizontal: 10),
         child: Column(
           children: [
             headerPost(),
             SizedBox(height: 15,),
            centerPost(), Card(
               child: Container(
                 width:double.infinity,
                 height: MediaQuery.of(context).size.height*0.4,
                 color: Colors.deepPurple,
               ),
               elevation: 8,
             ),
             actionPost(),
             buttompost()
           ],
         ),
       ),
     );
  }
}

class buttompost extends StatelessWidget {
  const buttompost({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
     color: Colors.grey[300],
      child: Column(
        children: [
          Row(
            children: [
              Icon(Icons.thumb_up_alt_outlined,color: Colors.blue,),
              Icon(Icons.favorite,color: Colors.red,),
              Icon(Icons.tag_faces,color: Colors.amber,),
              Text('1,035',style: TextStyle(color: Colors.deepPurple),)
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              CircleAvatar(radius: 15,backgroundColor: Colors.grey,),
              SizedBox(width: 5,),
             Flexible(child:  Container(

               padding: EdgeInsets.all(4),
               decoration: BoxDecoration(
                   color: Colors.white,
                   borderRadius: BorderRadius.circular(15)
               ),

               child: Row(
                 children: [
                   Text(
                     'write some thing...',
                     style: TextStyle(color: Colors.grey),
                   ),
                   Spacer(),
                   Icon(Icons.tag_faces,size: 20,),
                   Icon(Icons.camera_alt_outlined,size: 20),
                   Icon(Icons.gif_rounded,size: 20),
                   Icon(Icons.tab_sharp,size: 20),
                 ],
               ),
             )),
            ],
          )
        ],
      ),
    );
  }
}

class actionPost extends StatelessWidget {
  const actionPost({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
            child: Center(
              child: FlatButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.thumb_up_alt_outlined),
                  label: Text('like',style: TextStyle(
                      fontSize: 14
                  ),)),
            )),
        Expanded(
          flex: 1,
            child: Center(
              child: FlatButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.messenger_outline),
                  label: Text('comment',style: TextStyle(
                    fontSize: 14,
                  ),)),
            )),
        Expanded(
            child: Center(
              child: FlatButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.reply_outlined),
                  label: Text('share',style: TextStyle(
                      fontSize: 14
                  ),)),
            )),
      ],
    );
  }
}

class centerPost extends StatelessWidget {
  const centerPost({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.normal),
              children: [
                TextSpan(text: 'i want this mock up ao bad!!'),
                TextSpan(
                  text: 'found it',
                ),
                TextSpan(
                    text: 'http://marinad.com.ar',
                    style: TextStyle(color: Colors.blueAccent)),
//                     TextSpan(
//                         text: 'see Translate',
//                         style: TextStyle(color: Colors.blueAccent)),
              ]),
        ),
        TextButton(onPressed: (){}, child: Text('see translate')),

      ],
    );
  }
}

class headerPost extends StatelessWidget {
  const headerPost({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
//               crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          backgroundColor: Colors.grey,
        ),
        SizedBox(width: 10,),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Friend Name',
              style: TextStyle(fontSize: 18, color: Colors.deepPurple,fontWeight: FontWeight.bold),
            ),
            Row(
              children: [Text('today at 19:33',style: TextStyle(color: Colors.blueGrey,fontWeight: FontWeight.bold),), Icon(Icons.public,size: 14,)],
            )
          ],
        )
      ],
    );
  }
}
