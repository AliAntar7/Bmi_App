import 'dart:math';
import 'package:bmi_cal/bmi_result/tmi_result_screen.dart';
import 'package:flutter/material.dart';



class TmiScreen extends StatefulWidget {
  const TmiScreen({Key? key}) : super(key: key);

  @override
  State<TmiScreen> createState() => _TmiScreenState();
}

class _TmiScreenState extends State<TmiScreen>
{
  Color? color = Colors.grey[400] ;
  bool isMale = true ;
  double hieght = 150.0 ;
  int wieght = 60;
  int age = 20 ;
  late String name = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[400],
        title: Text(
          'BMI Calculator'
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children:
          [
            SizedBox(
              height: 20.0,
            ),
            Container(
              width: 370.0,
              child: TextFormField(
                onFieldSubmitted: (value)
                {
                  setState(() {
                    name = value ;
                    print(value);
                  });
                },
                 decoration: InputDecoration(
                  labelText: 'Entar Your Name',
                  labelStyle: TextStyle(
                    color: Colors.red,
                  ),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Container(
              height: 200.0,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children:
                  [
                    Expanded(
                      child: GestureDetector(
                        onTap: ()
                        {
                          setState(() {
                            isMale = true ;
                          });
                        },
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:
                            [
                              Image(
                                image: AssetImage('assets/images/male.png'),
                                width: 90.0,
                                height: 90.0,
                              ),
                              SizedBox(
                                height: 15.0,
                              ),
                              Text(
                                'MALE',
                                style: TextStyle(
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0,),
                            color: isMale? Colors.red[400] : color ,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: ()
                        {
                          setState(() {
                            isMale = false ;
                          });
                        },
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:
                            [
                              Image(
                                image: AssetImage('assets/images/female.png'),
                                width: 90.0,
                                height: 90.0,
                              ),
                              SizedBox(
                                height: 15.0,
                              ),
                              Text(
                                'FEMALE',
                                style: TextStyle(
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0,),
                            color: isMale? color : Colors.red[400] ,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 130.0,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0,),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:
                    [
                      Text(
                        'HEIGHT',
                        style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            '${hieght.round()}',
                            style: TextStyle(
                              fontSize: 40.0,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          Text(
                            'CM',
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Slider(
                        inactiveColor: Colors.redAccent[100],
                        activeColor: Colors.red[400],
                        thumbColor: Colors.red[400],
                          value: hieght,
                          min: 80.0,
                          max: 220.0,
                          onChanged: (value)
                          {
                            setState(() {
                              hieght = value ;
                              print(value.round());
                            });
                          },
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0,),
                    color: Colors.grey[400],
                  ),
                ),
              ),
            ),
            Container(
              height: 180.0,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children:
                  [
                    Expanded(
                      child: Container(
                        child: Column(
                          children:
                          [
                            Text(
                              'AGE',
                              style: TextStyle(
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '${age}',
                              style: TextStyle(
                                fontSize: 40.0,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:
                              [
                                FloatingActionButton(
                                  onPressed: ()
                                  {
                                    setState(() {
                                      age-- ;
                                    });
                                  },
                                  mini: true,
                                  heroTag: 'age-',
                                  child: Icon(
                                    Icons.remove,
                                  ),
                                  backgroundColor: Colors.red[400],
                                ),
                                FloatingActionButton(
                                  onPressed: ()
                                  {
                                    setState(() {
                                      age++ ;
                                    });
                                  },
                                  mini: true,
                                  heroTag: 'age+',
                                  child: Icon(
                                    Icons.add,
                                  ),
                                  backgroundColor: Colors.red[400],
                                ),
                              ],
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0,),
                          color: Colors.grey[400],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Expanded(
                      child: Container(
                        child: Column(
                          children:
                          [
                            Text(
                              'WEIGHT',
                              style: TextStyle(
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '${wieght}',
                              style: TextStyle(
                                fontSize: 40.0,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:
                              [
                                FloatingActionButton(
                                  onPressed: ()
                                  {
                                    setState(() {
                                      wieght-- ;
                                    });
                                  },
                                  mini: true,
                                  heroTag: 'wieght-',
                                  child: Icon(
                                    Icons.remove,
                                  ),
                                  backgroundColor: Colors.red[400],
                                ),
                                FloatingActionButton(
                                  onPressed: ()
                                  {
                                    setState(() {
                                      wieght ++ ;
                                    });
                                  },
                                  mini: true,
                                  heroTag: 'wieght+',
                                  child: Icon(
                                    Icons.add,
                                  ),
                                  backgroundColor: Colors.red[400],
                                ),
                              ],
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0,),
                          color: Colors.grey[400],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              color: Colors.red[400],
              child: MaterialButton(
                  onPressed: ()
                  {
                    double result = wieght / pow(hieght / 100 , 2);
                    print(result.round());

                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => TMIResultScreen(
                              age: age,
                              isMale: isMale,
                              result: result.round(),
                              name: name,
                            ),
                        ),
                    );
                  },
                child: Text(
                  'CALCULATE',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
