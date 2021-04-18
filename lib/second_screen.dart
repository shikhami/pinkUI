import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';

class SecondScreen extends StatelessWidget {
  static const routeName = './second_screen';
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(deviceSize.height * 0.47),
        child: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Container(
            height: deviceSize.height * 0.1,
            alignment: Alignment.topCenter,
            child: Row(
              children: [
                SizedBox(width: 170),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Text(
                          'DOG PROFILE',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        )),
                    Container(
                      height: 1,
                      width: 25,
                      color: Colors.white,
                    ),
                  ],
                ),
              ],
            ),
          ),
          flexibleSpace: Container(
            constraints: BoxConstraints.expand(),
            height: deviceSize.height * 0.42,
            width: double.infinity,
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                Container(
                  height: deviceSize.height * 0.47,
                  width: deviceSize.width,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                              'https://upload.wikimedia.org/wikipedia/commons/a/a0/Bill_Gates_2018.jpg',
                            ))),
                  ),
                ),
                Positioned(
                  top: 295.0,
                  right: 20,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.pink,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(12)),
                    alignment: Alignment.bottomRight,
                    height: deviceSize.height * 0.065,
                    width: 52,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.arrow_upward_outlined,
                            color: Colors.white,
                            size: 30,
                          ),
                          SizedBox(height: 2),
                          Container(
                            height: 2,
                            width: 35,
                            color: Colors.white,
                          ),
                          SizedBox(height: 2),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(width: 30),
                Text(
                  'Dog Details',
                  style: TextStyle(
                      color: Colors.pink,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text(
                          'Name',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text(
                          'Breed',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text(
                          'Gender',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text(
                          'Age',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text(
                          'Vaccinated',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text(
                          'Dog Size',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text(
                          'About',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 5.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text(
                          'Duke',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text(
                          'PUG',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text(
                          'Male',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
                          children: [
                            Text(
                              '5 years',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal),
                            ),
                            SizedBox(width: 15),
                            Icon(
                              Icons.calendar_today,
                              color: Colors.pink[400],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
                          children: [
                            Text(
                              '01-march-2021',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal),
                            ),
                            SizedBox(width: 10),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.pink,
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(5)),
                              alignment: Alignment.bottomRight,
                              height: deviceSize.height * 0.035,
                              width: 25,
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.arrow_upward_outlined,
                                      color: Colors.white,
                                      size: 10,
                                    ),
                                    SizedBox(height: 2),
                                    Container(
                                      height: 1,
                                      width: 15,
                                      color: Colors.white,
                                    ),
                                    SizedBox(height: 2),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
                          children: [
                            Text(
                              'Small',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal),
                            ),
                            SizedBox(width: 30),
                            Icon(Icons.expand_more, color: Colors.pink[400]),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: SizedBox(
                          height: 50,
                          width: 190,
                          child: Text(
                            'If you\'re looking for a loving easygoing Pal, I\'m your boy.',
                            maxLines: 2,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.normal),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Icon(
                  Icons.home,
                  color: Colors.pink,
                  size: 30,
                ),
              ),
              SizedBox(
                width: deviceSize.width * 0.6,
                height: deviceSize.height * 0.055,
                child: FlatButton(
                  onPressed: () {},
                  color: Colors.pinkAccent[400],
                  child: Text(
                    'Save & Next',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Icon(
                  Icons.person_pin,
                  color: Colors.pink,
                  size: 30,
                ),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
