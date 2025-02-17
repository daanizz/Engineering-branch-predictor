import 'package:flutter/material.dart';

class TestPage extends StatelessWidget {
  const TestPage({super.key});

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
                                  color: Colors.white,
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
                    height: 40,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Expanded(child: Container()),
                      Text(
                        'WELCOME TO TESTSPACE',
                        textAlign: TextAlign.center,
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        color: Colors.black,
                        width: screenWidth * .7,
                        height: screenHeight * .434,
                      ),
                    ],
                  ),

                  const SizedBox(
                    height: 30,
                  ),
                  // const Spacer(),
                  Row(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Expanded(child: Container()),
                      ElevatedButton(
                          onPressed: () {
                            print(
                                "In next step i have to add the gui of next page.");
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
                          child: const Text('Submit')),
                      // Expanded(child: Container()),
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
