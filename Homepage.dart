import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: HomePage()));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 5, vsync: this);
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(
                top: screenHeight * .06, left: screenWidth * .037),
            child: Row(
              children: [
                const Icon(
                  Icons.menu,
                  color: Colors.black,
                ),
                Expanded(child: Container()),
                Container(
                  width: 50,
                  height: 50,
                  margin: EdgeInsets.only(right: screenWidth * .0395),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.withOpacity(0.5)),
                )
              ],
            ),
          ),
          SizedBox(
            height: screenHeight * .03,
          ),
          Row(
            children: <Widget>[
              Container(
                height: screenHeight * 0.06,
                width: screenWidth * 0.0395,
                decoration: const BoxDecoration(),
              ),
              const Flexible(
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(9.0),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 0, color: Colors.white)),
                    filled: true,
                    fillColor: Color.fromRGBO(229, 236, 254, 1),
                  ),
                ),
              ),
              Container(
                height: screenHeight * 0.06,
                width: screenWidth * 0.0395,
                decoration: const BoxDecoration(),
              ),
            ],
          ),
          SizedBox(
            height: screenHeight * .02,
          ),
          CarouselSlider(
            items: [
              Container(
                margin: const EdgeInsets.all(9.7),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(9.0),
                  image: const DecorationImage(
                    image: AssetImage("assets/bgimage.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(9.7),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(9.0),
                  image: const DecorationImage(
                    image: AssetImage("assets/bgimage.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
            options: CarouselOptions(
              height: screenHeight * .24,
              enlargeCenterPage: false,
              autoPlay: true,
              aspectRatio: 10 / 9,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: const Duration(milliseconds: 700),
              viewportFraction: 0.967,
            ),
          ),
          SizedBox(
            height: screenHeight * .02,
          ),
          Row(
            children: [
              Container(
                width: screenWidth * 0.0393,
              ),
              Text(
                "Explore Campus",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: screenHeight * 0.02356),
              ),
              Expanded(child: Container()),
              Text(
                "See more",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: screenHeight * 0.01678990,
                    color: Colors.black54),
              ),
              Container(
                width: screenWidth * 0.0393,
              ),
            ],
          ),
          SizedBox(
            height: screenHeight * 0.01,
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 0),
            child: PreferredSize(
              preferredSize: const Size(200, 200),
              child: Container(
                margin: EdgeInsets.only(
                  left: screenWidth * .037,
                  right: screenWidth * .037,
                ),
                child: SizedBox(
                  height: screenHeight * .069787,
                  child: ButtonsTabBar(
                    controller: tabController,
                    backgroundColor: Colors.red,
                    unselectedBackgroundColor: Colors.grey[300],
                    unselectedLabelStyle: const TextStyle(color: Colors.black),
                    labelStyle: const TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                    tabs: [
                      Tab(
                        child: Container(
                          width: screenWidth * 0.26,
                        ),
                      ),
                      Tab(
                        child: Container(
                          width: screenWidth * 0.26,
                        ),
                      ),
                      Tab(
                        child: Container(
                          width: screenWidth * 0.26,
                        ),
                      ),
                      Tab(
                        child: Container(
                          width: screenWidth * 0.26,
                        ),
                      ),
                      Tab(
                        child: Container(
                          width: screenWidth * 0.26,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: tabController,
              children: <Widget>[
                ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    Row(
                      children: [
                        Container(
                            margin: EdgeInsets.only(
                                right: screenWidth * 0.037,
                                left: screenWidth * 0.037),
                            height: screenHeight * .23,
                            width: screenWidth * .4443,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(9.0),
                            )),
                        Container(
                            margin: EdgeInsets.only(
                                right: screenWidth * 0.037,
                                left: screenWidth * 0),
                            height: screenHeight * .23,
                            width: screenWidth * .4443,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(9.0),
                            )),
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Container(
                                margin: EdgeInsets.only(
                                    top: screenHeight * 0.02,
                                    right: screenWidth * 0.037,
                                    left: screenWidth * 0.037),
                                height: screenHeight * .23,
                                width: screenWidth * .4443,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(9.0),
                                )),
                            Container(
                                margin: EdgeInsets.only(
                                    top: screenHeight * 0.02,
                                    right: screenWidth * 0.037,
                                    left: screenWidth * 0),
                                height: screenHeight * .23,
                                width: screenWidth * .4443,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(9.0),
                                )),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Container(
                                margin: EdgeInsets.only(
                                    top: screenHeight * 0.02,
                                    right: screenWidth * 0.037,
                                    left: screenWidth * 0.037,
                                    bottom: screenHeight * 0.02),
                                height: screenHeight * .23,
                                width: screenWidth * .4443,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(9.0),
                                )),
                            Container(
                                margin: EdgeInsets.only(
                                    top: screenHeight * 0.02,
                                    right: screenWidth * 0.037,
                                    left: screenWidth * 0,
                                    bottom: screenHeight * 0.02),
                                height: screenHeight * .23,
                                width: screenWidth * .4443,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(9.0),
                                )),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
                ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    Row(
                      children: [
                        Container(
                            margin: EdgeInsets.only(
                                right: screenWidth * 0.037,
                                left: screenWidth * 0.037),
                            height: screenHeight * .23,
                            width: screenWidth * .4443,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(9.0),
                            )),
                        Container(
                            margin: EdgeInsets.only(
                                right: screenWidth * 0.037,
                                left: screenWidth * 0),
                            height: screenHeight * .23,
                            width: screenWidth * .4443,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(9.0),
                            )),
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Container(
                                margin: EdgeInsets.only(
                                    top: screenHeight * 0.02,
                                    right: screenWidth * 0.037,
                                    left: screenWidth * 0.037),
                                height: screenHeight * .23,
                                width: screenWidth * .4443,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(9.0),
                                )),
                            Container(
                                margin: EdgeInsets.only(
                                    top: screenHeight * 0.02,
                                    right: screenWidth * 0.037,
                                    left: screenWidth * 0),
                                height: screenHeight * .23,
                                width: screenWidth * .4443,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(9.0),
                                )),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Container(
                                margin: EdgeInsets.only(
                                    top: screenHeight * 0.02,
                                    right: screenWidth * 0.037,
                                    left: screenWidth * 0.037,
                                    bottom: screenHeight * 0.02),
                                height: screenHeight * .23,
                                width: screenWidth * .4443,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(9.0),
                                )),
                            Container(
                                margin: EdgeInsets.only(
                                    top: screenHeight * 0.02,
                                    right: screenWidth * 0.037,
                                    left: screenWidth * 0,
                                    bottom: screenHeight * 0.02),
                                height: screenHeight * .23,
                                width: screenWidth * .4443,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(9.0),
                                )),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
                ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    Row(
                      children: [
                        Container(
                            margin: EdgeInsets.only(
                                right: screenWidth * 0.037,
                                left: screenWidth * 0.037),
                            height: screenHeight * .23,
                            width: screenWidth * .4443,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(9.0),
                            )),
                        Container(
                            margin: EdgeInsets.only(
                                right: screenWidth * 0.037,
                                left: screenWidth * 0),
                            height: screenHeight * .23,
                            width: screenWidth * .4443,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(9.0),
                            )),
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Container(
                                margin: EdgeInsets.only(
                                    top: screenHeight * 0.02,
                                    right: screenWidth * 0.037,
                                    left: screenWidth * 0.037),
                                height: screenHeight * .23,
                                width: screenWidth * .4443,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(9.0),
                                )),
                            Container(
                                margin: EdgeInsets.only(
                                    top: screenHeight * 0.02,
                                    right: screenWidth * 0.037,
                                    left: screenWidth * 0),
                                height: screenHeight * .23,
                                width: screenWidth * .4443,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(9.0),
                                )),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Container(
                                margin: EdgeInsets.only(
                                    top: screenHeight * 0.02,
                                    right: screenWidth * 0.037,
                                    left: screenWidth * 0.037,
                                    bottom: screenHeight * 0.02),
                                height: screenHeight * .23,
                                width: screenWidth * .4443,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(9.0),
                                )),
                            Container(
                                margin: EdgeInsets.only(
                                    top: screenHeight * 0.02,
                                    right: screenWidth * 0.037,
                                    left: screenWidth * 0,
                                    bottom: screenHeight * 0.02),
                                height: screenHeight * .23,
                                width: screenWidth * .4443,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(9.0),
                                )),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
                ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    Row(
                      children: [
                        Container(
                            margin: EdgeInsets.only(
                                right: screenWidth * 0.037,
                                left: screenWidth * 0.037),
                            height: screenHeight * .23,
                            width: screenWidth * .4443,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(9.0),
                            )),
                        Container(
                            margin: EdgeInsets.only(
                                right: screenWidth * 0.037,
                                left: screenWidth * 0),
                            height: screenHeight * .23,
                            width: screenWidth * .4443,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(9.0),
                            )),
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Container(
                                margin: EdgeInsets.only(
                                    top: screenHeight * 0.02,
                                    right: screenWidth * 0.037,
                                    left: screenWidth * 0.037),
                                height: screenHeight * .23,
                                width: screenWidth * .4443,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(9.0),
                                )),
                            Container(
                                margin: EdgeInsets.only(
                                    top: screenHeight * 0.02,
                                    right: screenWidth * 0.037,
                                    left: screenWidth * 0),
                                height: screenHeight * .23,
                                width: screenWidth * .4443,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(9.0),
                                )),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Container(
                                margin: EdgeInsets.only(
                                    top: screenHeight * 0.02,
                                    right: screenWidth * 0.037,
                                    left: screenWidth * 0.037,
                                    bottom: screenHeight * 0.02),
                                height: screenHeight * .23,
                                width: screenWidth * .4443,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(9.0),
                                )),
                            Container(
                                margin: EdgeInsets.only(
                                    top: screenHeight * 0.02,
                                    right: screenWidth * 0.037,
                                    left: screenWidth * 0,
                                    bottom: screenHeight * 0.02),
                                height: screenHeight * .23,
                                width: screenWidth * .4443,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(9.0),
                                )),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
                ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    Row(
                      children: [
                        Container(
                            margin: EdgeInsets.only(
                                right: screenWidth * 0.037,
                                left: screenWidth * 0.037),
                            height: screenHeight * .23,
                            width: screenWidth * .4443,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(9.0),
                            )),
                        Container(
                            margin: EdgeInsets.only(
                                right: screenWidth * 0.037,
                                left: screenWidth * 0),
                            height: screenHeight * .23,
                            width: screenWidth * .4443,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(9.0),
                            )),
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Container(
                                margin: EdgeInsets.only(
                                    top: screenHeight * 0.02,
                                    right: screenWidth * 0.037,
                                    left: screenWidth * 0.037),
                                height: screenHeight * .23,
                                width: screenWidth * .4443,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(9.0),
                                )),
                            Container(
                                margin: EdgeInsets.only(
                                    top: screenHeight * 0.02,
                                    right: screenWidth * 0.037,
                                    left: screenWidth * 0),
                                height: screenHeight * .23,
                                width: screenWidth * .4443,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(9.0),
                                )),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Container(
                                margin: EdgeInsets.only(
                                    top: screenHeight * 0.02,
                                    right: screenWidth * 0.037,
                                    left: screenWidth * 0.037,
                                    bottom: screenHeight * 0.02),
                                height: screenHeight * .23,
                                width: screenWidth * .4443,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(9.0),
                                )),
                            Container(
                                margin: EdgeInsets.only(
                                    top: screenHeight * 0.02,
                                    right: screenWidth * 0.037,
                                    left: screenWidth * 0,
                                    bottom: screenHeight * 0.02),
                                height: screenHeight * .23,
                                width: screenWidth * .4443,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(9.0),
                                )),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
