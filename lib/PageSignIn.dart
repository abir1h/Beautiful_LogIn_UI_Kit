import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Animation/FadeAnimation.dart';

class PageSignIn extends StatefulWidget {
  @override
  _PageSignInState createState() => _PageSignInState();
}

class _PageSignInState extends State<PageSignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/background/background.png"),
              fit: BoxFit.cover
            )
          ),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Stack(
                   children: <Widget>[
                     Column(
                       children: <Widget>[
                         Container(
                           alignment: Alignment.centerLeft,
                           padding: EdgeInsets.only(left: 25,top: 40),
                           child: IconButton(
                             iconSize: 30,
                               icon: Icon(
                                 Icons.arrow_back,
                                 color: Colors.white,
                               ),
                               onPressed: (){
                               return Navigator.pop(context);
                               }
                           ),
                         ),
                         Row(
                           children: <Widget>[
                             Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: <Widget>[
                                 Container(
                                     padding: EdgeInsets.only(left: 40),
                                     child: Text(
                                       "Hello,",
                                       style: TextStyle(
                                           color: Colors.white,
                                           fontSize: 25
                                       ),
                                     )
                                 ),
                                 Container(
                                     padding: EdgeInsets.only(left: 40),
                                     child: Text(
                                       "Jhone",
                                       style: TextStyle(
                                           color: Colors.white,
                                           fontSize: 28,
                                           fontWeight: FontWeight.w500
                                       ),
                                     )
                                 ),
                               ],
                             ),
                             FadeAnimation(1.6,Container(
                               padding: EdgeInsets.only(left: 20,top: 40),
                               child: Image(
                                 image: AssetImage("assets/ilustration/ilustration2.png"),
                                 height: 250,
                                 width: 250,
                               ),
                             ),
                             ),
                           ],
                         ),
                         SizedBox(
                           height: 30,
                         ),
                         Container(
                           width: 330,
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: <Widget>[
                               Padding(
                                 padding: const EdgeInsets.only(left: 15),
                                 child: Text(
                                   "Email",
                                   style: TextStyle(
                                     fontSize: 20,
                                     color: Colors.indigoAccent
                                   ),
                                 ),
                               ),
                            TextField(
                              keyboardType: TextInputType.emailAddress,
                              style: TextStyle(
                                fontSize: 20
                              ),
                            decoration: InputDecoration(
                               enabledBorder: UnderlineInputBorder(
                                 borderSide: BorderSide(
                                     color: Colors.indigoAccent
                                 )
                               ),
                             prefixIcon: Icon(
                               Icons.mail,
                               color: Colors.indigoAccent,
                             )
                           ),
                         ),
                             ],
                           ),
                         ),
                         SizedBox(
                           height: 20,
                         ),
                         Container(
                           width: 330,
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: <Widget>[
                               Padding(
                                 padding: const EdgeInsets.only(left: 15),
                                 child: Text(
                                   "Password",
                                   style: TextStyle(
                                       fontSize: 20,
                                       color: Colors.indigoAccent
                                   ),
                                 ),
                               ),
                               TextField(
                                 obscureText: true,
                                 style: TextStyle(
                                   fontSize: 20
                                 ),
                                 decoration: InputDecoration(
                                   enabledBorder: UnderlineInputBorder(
                                     borderSide: BorderSide(
                                       color: Colors.indigoAccent
                                     ),
                                   ),
                                     prefixIcon: Icon(
                                       Icons.vpn_key,
                                       color: Colors.indigoAccent,
                                     )
                                 ),
                               ),
                             ],
                           ),
                         ),
                         SizedBox(
                           height: 30,
                         ),
                         Container(
                           height: 60,
                           child: RaisedButton(
                             onPressed: (){

                             },
                             shape: RoundedRectangleBorder(
                               borderRadius: BorderRadius.circular(30)
                             ),
                             padding: EdgeInsets.all(0),
                             child: Ink(
                               decoration: BoxDecoration(
                                   gradient: LinearGradient(colors: [
                                     Colors.indigoAccent,
                                     Color(0xffE67332)
                                   ],
                                     begin: Alignment.bottomLeft,
                                     end: Alignment.topRight,
                                   ),
                                   borderRadius: BorderRadius.circular(30)
                               ),
                               child: Container(
                                 constraints: BoxConstraints(maxWidth: 260.0, minHeight: 60.0),
                                 alignment: Alignment.center,
                                 child: Text(
                                   "Sign In",
                                   textAlign: TextAlign.center,
                                   style: TextStyle(
                                       color: Colors.white,
                                     fontSize: 18
                                   ),
                                 ),
                               ),
                             ),
                           ),
                         ),
                       ],
                     ),
                   ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
