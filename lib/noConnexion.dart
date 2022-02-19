import 'package:flutter/material.dart';
class noConnexion extends StatefulWidget {


  @override
  _noConnexionState createState() => _noConnexionState();
}

class _noConnexionState extends State<noConnexion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(

        children: [
          SizedBox(
            height: 140,
          ),
          Container(

              height: 300,
              //width: double.infinity  ,// take the whole space in width
              child: FittedBox( fit: BoxFit.cover ,


                  // use the fitted box for the adjustement
                  child: Image(image: AssetImage('assets/images/network.png'),))


          ),



        ],
      ),

    );
  }
}
