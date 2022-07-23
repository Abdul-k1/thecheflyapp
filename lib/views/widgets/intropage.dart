import 'package:flutter/material.dart';
//import 'package:lottie/lottie.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'recipe_card.dart';
import 'home.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/naija_jollof3.jpeg'),
            fit: BoxFit.cover,
            opacity: 0.6,
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              bottom: 0,
              child: Container(
                height: height / 2.5,
                width: width,
                decoration: BoxDecoration(
                  color: Color(0xffb946734),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(90.0),
                    topRight: Radius.circular(90.0),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ListView(
                    children: [
                      Container(
                        child: Text('Wanna Cook \n Something Delicious?',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 22.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                      ),
                      SizedBox(height: 40.0),
                      Container(
                        child: Text(
                          "Let's try our best recipe\nsimple to make and tasty",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.white70,
                            //letterSpacing: 0.5,
                            height: 1.5,
                          ),
                        ),
                      ),
                      SizedBox(height: 40.0),

                      /**implementation of Lottie asset disabled because
                      it is draining my Mac's battery **/
                      //Column(
                      //children: [
                      // LottieBuilder.asset('assets/chef.json',
                      //   height: 200, fit: BoxFit.cover),
                      //],
                      // ),
                      Column(
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomePage()),
                              );
                            },
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  'Get Started',
                                ),
                                // Using the Font Awesome Package
                                /**IconButton(
                                  icon: FaIcon(
                                    FontAwesomeIcons.arrowRight,
                                    size: 27,
                                  ),
                                  onPressed: () {},
                                ), **/
                                Icon(
                                  Icons.arrow_right_alt,
                                  size: 40.0,
                                ),
                              ],
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.black87,
                              textStyle: TextStyle(
                                fontSize: 15.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                              padding: EdgeInsets.symmetric(horizontal: 30.0),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
