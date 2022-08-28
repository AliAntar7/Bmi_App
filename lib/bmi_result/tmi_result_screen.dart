import 'package:flutter/material.dart';

class TMIResultScreen extends StatelessWidget {


  final int result ;
  final bool isMale ;
  final int age ;
  final String name ;

  TMIResultScreen({
   required this.result,
    required this.isMale,
    required this.age,
    required this.name,
});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[400],
        title: Text(
          'BMI Screen',
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children:
        [
          Center(
            child: Text(
            'Your Name : \n ${name}',
            style: TextStyle(
              fontSize: 40.0,
              fontWeight: FontWeight.bold,
            ),
        ),
          ),
          SizedBox(
            height: 50.0,
          ),
          Text(
            'Gender : ${isMale? 'Male' : 'Female'}',
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Age : ${age}',
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Your Result : ${result}',
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
