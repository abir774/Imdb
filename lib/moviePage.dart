import 'package:flutter/material.dart';
import 'package:get/get.dart';

class moviePage extends StatefulWidget {
  @override
  _moviePageState createState() => _moviePageState();
}

class _moviePageState extends State<moviePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Color(0xFF21222E)),
      backgroundColor: Color(0xFF21222E),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Container(
                    height: MediaQuery.of(context).size.height * 0.5,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.network(
                        Get.parameters['Poster'],
                        fit: BoxFit.fill,
                        height: 50,
                      ),
                    )),
              ),
              Text(
                Get.parameters['Title'].toString(),
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
              Row(
                children: [
                  Icon(Icons.star, color: Colors.amber, size: 30),
                  Text(
                    ' ' + Get.parameters['imdbRating'].toString(),
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Text(
                'Genre : ' + Get.parameters['Genre'].toString(),
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              Text(
                'Realesed : ' + Get.parameters['Released'].toString(),
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              Text(
                'Country : ' + Get.parameters['Country'].toString(),
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Text(
                'Description : ' + Get.parameters['Plot'].toString(),
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
