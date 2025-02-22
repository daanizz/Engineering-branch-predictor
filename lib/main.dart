import 'package:flutter/material.dart';
import 'testpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // debugShowCheckedModeBanner: false,
      home: Scaffold(
        // backgroundColor: Colors.blueAccent,
        body: LayoutBuilder(
          builder: (context, constraints) {
            double screenWidth = constraints.maxWidth;
            double screenHeight = constraints.maxHeight;
            return Container(
              //main container.
              width: screenWidth,
              height: screenHeight,
              // to give a gradient to the bg
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: AlignmentDirectional.topEnd,
                      end: Alignment.bottomCenter,
                      colors: [
                    Color.fromARGB(255, 0, 0, 0),
                    Color.fromARGB(255, 3, 23, 103)
                  ])),
              // color: Colors.greenAccent,
              child: Column(
                //starts from top to bottom in a column.
                crossAxisAlignment:
                    CrossAxisAlignment.start, //alignment should be mentioned.
                children: [
                  SizedBox(
                    height: screenHeight * .09,
                  ),
                  Container(
                      decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      alignment: Alignment.centerLeft,
                      width: screenWidth,
                      height: (screenWidth * .2).clamp(15, 100),
                      padding: const EdgeInsets.only(left: 32, right: 34),
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "ED.ENG",
                              // textAlign: TextAlign.left,
                              style: TextStyle(
                                  color:
                                      const Color.fromARGB(255, 255, 255, 255),
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "JollyLodger",
                                  fontSize: (screenWidth * .07).clamp(20, 60)),
                            ),
                            const Spacer(),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(25),
                              child: Image.asset(
                                'img/Preview.jpg',
                                width: (screenWidth * .12).clamp(15, 100),
                                height: (screenWidth * .10).clamp(15, 100),
                                fit: BoxFit.cover,
                              ),
                            )
                          ])),
                  SizedBox(
                    height: screenHeight * .08,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Expanded(child: Container()),
                      Text(
                        'Get a TEST On Your Engineering Aptitude!!',
                        // textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "JollyLodger",
                            fontSize: (screenWidth * .045).clamp(16, 32)),
                      ),
                      // Expanded(child: Container()),
                    ],
                  ),

                  SizedBox(
                    height: screenHeight * .2,
                  ),
                  // const Spacer(),
                  Row(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(child: Container()),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const TestPage()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            minimumSize:
                                Size((screenWidth * .12), (screenHeight * .02)),
                            foregroundColor: Colors.white,
                            backgroundColor: Colors.blueGrey,
                            textStyle: TextStyle(
                              fontFamily: "JollyLodger",
                              fontSize: (screenWidth * .05).clamp(18, 36),
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            elevation: 5,
                          ),
                          child: const Text('Test')),
                      Expanded(child: Container()),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
