import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: signin_page()));
}

class signin_page extends StatefulWidget {
  const signin_page({Key? key}) : super(key: key);

  @override
  State<signin_page> createState() => _signin_pageState();
}

class _signin_pageState extends State<signin_page> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Container(
      width: double.maxFinite,
      height: double.maxFinite,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/bgimage.jpg'), fit: BoxFit.cover)),
      child: Column(
        children: [
          SizedBox(
            height: screenHeight * .14,
          ),
          Container(
            width: screenWidth * .60,
            height: screenHeight * .10,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/logo.png'), fit: BoxFit.cover)),
          ),
          SizedBox(
            height: screenHeight * .11,
          ),
          Container(
            padding: const EdgeInsets.all(0),
            width: double.infinity, //490
            height: screenHeight * .65, //596
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40),
                    topLeft: Radius.circular(40))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: screenHeight * .04,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: screenHeight * 0.06,
                      width: screenWidth * 0.070,
                      decoration: const BoxDecoration(),
                    ),
                    Text(
                      'Sign In',
                      style: TextStyle(
                          fontSize: screenHeight * .03,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Inter'),
                    ),
                  ],
                ),
                SizedBox(
                  height: screenHeight * .01,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: screenHeight * 0.06,
                      width: screenWidth * 0.070,
                      decoration: const BoxDecoration(),
                    ),
                    Text(
                      'Email',
                      style: TextStyle(
                          fontSize: screenHeight * .020,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Inter'),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Container(
                      height: screenHeight * 0.06,
                      width: screenWidth * 0.070,
                      decoration: const BoxDecoration(),
                    ),
                    Flexible(
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: const BorderRadius.all(
                              const Radius.circular(9.0),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 0, color: Colors.white)),
                          filled: true,
                          fillColor: Color.fromRGBO(229, 236, 254, 1),
                        ),
                      ),
                    ),
                    Container(
                      height: screenHeight * 0.06,
                      width: screenWidth * 0.070,
                      decoration: const BoxDecoration(),
                    ),
                  ],
                ),
                SizedBox(
                  height: screenHeight * .02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: screenHeight * 0.06,
                      width: screenWidth * 0.070,
                      decoration: const BoxDecoration(),
                    ),
                    Text(
                      'Password',
                      style: TextStyle(
                          fontSize: screenHeight * .020,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Inter'),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Container(
                      height: screenHeight * 0.06,
                      width: screenWidth * 0.070,
                      decoration: const BoxDecoration(),
                    ),
                    Flexible(
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 0, color: Colors.white)),
                          filled: true,
                          fillColor: Color.fromRGBO(229, 236, 254, 1),
                        ),
                      ),
                    ),
                    Container(
                      height: screenHeight * 0.06,
                      width: screenWidth * 0.070,
                      decoration: const BoxDecoration(),
                    ),
                  ],
                ),
                SizedBox(
                  height: screenHeight * .046,
                ),
                Row(
                  children: <Widget>[
                    Container(
                      height: screenHeight * 0.06,
                      width: screenWidth * 0.070,
                      decoration: const BoxDecoration(),
                    ),
                    Flexible(
                      child: SizedBox(
                        height: screenHeight * .07,
                        width: screenWidth * .89,
                        child: Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(79, 118, 215, 1),
                              borderRadius: BorderRadius.circular(9)),
                          child: Center(
                            child: Text(
                              "Sign In",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: screenHeight * 0.06,
                      width: screenWidth * 0.070,
                      decoration: const BoxDecoration(),
                    ),
                  ],
                ),
                SizedBox(
                  height: screenHeight * .040,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
                      style: TextStyle(
                          fontSize: screenHeight * .018,
                          fontWeight: FontWeight.w300,
                          fontFamily: 'Inter'),
                    ),
                    TextButton(
                      onPressed: () {
                        // Navigator.push(context, MaterialPageRoute(builder: (context)=>signup_page()));
                      },
                      child: Text(
                        " Sign up",
                        style: TextStyle(
                            fontSize: screenHeight * .018,
                            fontWeight: FontWeight.w900,
                            fontFamily: 'Inter',
                            color: Color.fromRGBO(79, 118, 215, 1)),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
