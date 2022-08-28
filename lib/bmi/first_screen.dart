import 'package:bmi_cal/bmi/tmi_screen.dart';
import 'package:flutter/material.dart';


class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
                      Container(
                        height: 300.0,
                        width: 300.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.grey[400],
                        ),
                        child: Column(
                         mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              image: AssetImage('assets/images/bmi.png'),
                              width: 200.0,
                              height: 200.0,
                            ),
                            SizedBox(
                              height: 18.0,
                            ),
                            Text(
                              'Calculator App',
                              style: TextStyle(
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 150.0,
                      ),
                      Container(
              decoration: BoxDecoration(
                color: Colors.red[400],
                borderRadius: BorderRadius.circular(30.0),
              ),
              height: 100.0,
              width: 300.0,
              child: Row(
                children: [
                  MaterialButton(
                    highlightColor: Colors.red[200],
                          onPressed: ()
                          {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => TmiScreen(
                                ),
                              ),
                            );
                          },
                        child: Text(
                          'Let\'s Go',
                          style: TextStyle(
                            fontSize: 50.0,
                            color: Colors.white,
                          ),
                        ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 50.0,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
                    ],
        ),
      ),
    );
  }
}
