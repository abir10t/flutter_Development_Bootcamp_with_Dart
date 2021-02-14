import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home:Scaffold(
          backgroundColor: Colors.teal,
          body: SafeArea(
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: <Widget>[
               CircleAvatar(
                 radius: 50.0,
                 backgroundImage: AssetImage('images/abir.jpg.webp'),
               ),
               Text(
                 'Instragram',
                 style:TextStyle(
                   fontFamily:'Pacifico',
                   fontSize:40.0,
                   color:Colors.white,
                    fontWeight: FontWeight.bold
                 )
               ),
               Card(

                 color:Colors.white,
                 margin:EdgeInsets.symmetric(vertical:10.0, horizontal:25.0 ),
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Row(
                    children:<Widget>[
                      Icon(
                          Icons.phone,
                          color:Colors.black38,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        '+8801684976686',
                        style:TextStyle(
                          color:Colors.teal.shade900,
                          fontFamily:'Source Sans Pro',
                          fontSize: 20.0,
                        ),
                      ),
                    ],
                  ),
                ),
               ),
               SizedBox(
                 height:20.0,
                 width:150,
                 child: Divider(
                   color:Colors.teal.shade900,
                 )
               ),
               Card(

                 color:Colors.white,
                 margin:EdgeInsets.symmetric(vertical:10.0, horizontal:25.0 ),
                 child: Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Row(
                     children:<Widget>[
                       Icon(
                         Icons.email,
                         color:Colors.black38,
                       ),
                       SizedBox(
                         width: 10.0,
                       ),
                       Text(
                         'aabir.10t@gmail.com',
                         style:TextStyle(
                           color:Colors.teal.shade900,
                           fontFamily:'Source Sans Pro',
                           fontSize: 20.0,
                         ),
                       ),

                     ],
                   ),
                 ),
               ),

             ],

           )
          ),
        ),
    );
  }
}

