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
                      height: screenHeight * .175,
                      padding: const EdgeInsets.only(left: 32, right: 34),
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "ED.ENG",
                              // textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "JollyLodger",
                                  fontSize: 50),
                            ),
                            const Spacer(),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(25),
                              child: Image.asset(
                                'img/Preview.jpg',
                                width: 80,
                                height: 80,
                                fit: BoxFit.cover,
                              ),
                            )
                          ])),
                  const SizedBox(
                    height: 200,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Expanded(child: Container()),
                      Text(
                        'Get a TEST On Your Engineering Aptitude!!',
                        // textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "JollyLodger",
                            fontSize: 30),
                      ),
                      // Expanded(child: Container()),
                    ],
                  ),

                  const SizedBox(
                    height: 50,
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
                              minimumSize: const Size(120, 55),
                              foregroundColor: Colors.white,
                              backgroundColor: Colors.blueGrey,
                              textStyle: const TextStyle(
                                fontFamily: "JollyLodger",
                                fontSize: 30,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              )),
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
