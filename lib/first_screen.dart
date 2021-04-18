import 'package:flutter/material.dart';
import './second_screen.dart';

class FirstScreen extends StatelessWidget {
  final double circleRadius = 100.0;

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: deviceSize.height * 0.036),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(width: 15),
              Icon(
                Icons.arrow_back_ios,
                color: Colors.pinkAccent[400],
              ),
              SizedBox(width: 15),
              Icon(
                Icons.chat_sharp,
                color: Colors.pinkAccent[400],
              ),
              SizedBox(width: 15),
              Icon(
                Icons.settings,
                color: Colors.pinkAccent[400],
              ),
              SizedBox(width: 150),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed(SecondScreen.routeName);
                      },
                      child: Text(
                        'PROFILE',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      )),
                  Container(
                    height: 1,
                    width: 25,
                    color: Colors.black,
                  ),
                ],
              ),
            ],
          ),
          Container(
              padding: EdgeInsets.only(left: 54, top: 13),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Hi,',
                style: TextStyle(
                    color: Colors.pinkAccent[400],
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              )),
          SizedBox(height: deviceSize.height * 0.0001),
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Padding(
                padding: EdgeInsets.only(top: circleRadius / 2.0),
                child: Container(
                  height: deviceSize.height * 0.31,
                  width: deviceSize.width * 0.7,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.all(Radius.circular(35)),
                    color: Colors.pinkAccent[400],
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: deviceSize.height * 0.09),
                      Text(
                        'Duke',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'PUG',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '5 Years Old',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'MALE',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.check_circle_rounded,
                        color: Colors.green,
                      ),
                      Text(
                        'Vaccinated',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '(1 month ago)',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: circleRadius,
                height: circleRadius,
                child: DecoratedBox(
                  decoration: ShapeDecoration(
                      shape: CircleBorder(),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            'https://upload.wikimedia.org/wikipedia/commons/a/a0/Bill_Gates_2018.jpg',
                          ))),
                ),
              ),
            ],
          ),
          Icon(Icons.expand_more, color: Colors.pinkAccent[400]),
          Text(
            'About Me',
            style: TextStyle(
                color: Colors.pinkAccent[400],
                fontSize: 18,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 40,
            width: deviceSize.width * 0.5,
            child: Center(
              child: Text(
                'If you\'re looking for a loving easygoing Pal, I\'m your boy.',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 13,
                ),
              ),
            ),
          ),
          SizedBox(height: deviceSize.height * 0.01),
          Container(
            width: circleRadius,
            height: circleRadius,

            child: DecoratedBox(
              decoration: ShapeDecoration(
                  shape: CircleBorder(),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        'https://upload.wikimedia.org/wikipedia/commons/a/a0/Bill_Gates_2018.jpg',
                      ))),
            ),
            // ),
          ),
          SizedBox(height: deviceSize.height * 0.01),
          Text(
            'Aditya',
            style: TextStyle(
                color: Colors.pinkAccent[400],
                fontSize: 18,
                fontWeight: FontWeight.bold),
          ),
          Text(
            'Owner',
            style: TextStyle(
                color: Colors.black, fontSize: 13, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: deviceSize.height * 0.01),
          SizedBox(
            width: deviceSize.width * 0.75,
            height: deviceSize.height * 0.062,
            child: FlatButton(
              onPressed: () {},
              color: Colors.pinkAccent[400],
              child: Text(
                'Find a match',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25)),
            ),
          ),
          SizedBox(height: deviceSize.height * 0.01),
          SizedBox(
            width: deviceSize.width * 0.75,
            height: deviceSize.height * 0.062,
            child: FlatButton(
              onPressed: () {},
              color: Colors.pinkAccent[400],
              child: Text(
                'Found matches',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25)),
            ),
          ),
        ],
      ),
    ));
  }
}
