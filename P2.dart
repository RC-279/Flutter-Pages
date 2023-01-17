import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home:signup_page()));
}
class signup_page extends StatelessWidget {
  const signup_page({Key? key}) : super(key: key);

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
                height: screenHeight * .08,
              ),
              Container(
                width: screenWidth * .60,
                height: screenHeight * .10,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/logo.png'), fit: BoxFit.cover)),
              ),
              SizedBox(
                height: screenHeight * .028,
              ),
              Container(
                padding: const EdgeInsets.all(0),
                width: double.infinity, //490
                height: screenHeight * .792, //596
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
                          'Sign Up',
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
                          'Confirm Password',
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
                      height: screenHeight * .002,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: screenHeight * 0.06,
                          width: screenWidth * 0.005,
                          decoration: const BoxDecoration(),
                        ),
                        Text(
                          "I agree to the ",
                          style: TextStyle(
                            fontSize: screenHeight * .014,
                            fontWeight: FontWeight.w500,),
                        ),
                        Text(
                          "Terms & Conditions",
                          style: TextStyle(
                            fontSize: screenHeight * .014,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(79, 118, 215, 1),),
                        ),
                        Text(
                            " and ",
                            style: TextStyle(
                                fontSize: screenHeight * .014,
                                fontWeight: FontWeight.w500)
                        ),
                        Text(
                          "Privacy Policy",
                          style: TextStyle(
                              fontSize: screenHeight * .014,
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(79, 118, 215, 1)),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          height: screenHeight * 0.09,
                          width: screenWidth * 0.070,
                          decoration: const BoxDecoration(),
                        ),
                        Flexible(
                          child: SizedBox(
                              height: screenHeight * .07,
                              width: screenWidth * .89,
                              child: ElevatedButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Sign Up",
                                    style: TextStyle(
                                        fontSize: screenHeight * .024,
                                        fontWeight: FontWeight.w900,
                                        fontFamily: 'Inter'),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                    Color.fromRGBO(79, 118, 215, 1),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(9),
                                    ),
                                  ))),
                        ),
                        Container(
                          height: screenHeight * 0.06,
                          width: screenWidth * 0.070,
                          decoration: const BoxDecoration(),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: screenHeight * .022,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Already have an account?",
                          style: TextStyle(
                              fontSize: screenHeight * .018,
                              fontWeight: FontWeight.w300,
                              fontFamily: 'Inter'),
                        ),
                        TextButton(
                          onPressed: (){
                            // Navigator.push(context, MaterialPageRoute(builder: (context)=>signin_page()));
                          },
                          child: Text(
                            " Sign In",
                            style: TextStyle(
                                fontSize: screenHeight * .018,
                                fontWeight: FontWeight.w900,
                                fontFamily: 'Inter',
                                color: Color.fromRGBO(79, 118, 215, 1)),
                          ),
                        ),
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
