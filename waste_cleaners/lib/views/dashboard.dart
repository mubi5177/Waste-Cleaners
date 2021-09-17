import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:waste_cleaners/views/allcategory.dart';
import 'package:sticky_headers/sticky_headers.dart';
import 'package:waste_cleaners/views/profile.dart';
import 'package:waste_cleaners/views/search.dart';
import 'package:waste_cleaners/views/whishlist.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _selectedItemIndex = 0;
  bool isPressed = false;

  bool dashboard = true;
  bool search = false;
  bool whislist = false;
  bool profile = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.green.shade200, Colors.white],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(20),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.grey[300],
              blurRadius: 3.0,
              offset: Offset(0.0, 0.5),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            buildNavBarItem(Icons.home_outlined, 0),
            buildNavBarItem(Icons.search, 1),
            buildNavBarItem(Icons.favorite_outline, 2),
            buildNavBarItem(Icons.person_outline_outlined, 3),
          ],
        ),
      ),
      body: SafeArea(
        child: Container(
          color: Colors.white,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            child: dashboard
                ? Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 5.0, left: 12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              clipBehavior: Clip.hardEdge,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              height: 40,
                              width: 40,
                              child: Image.network(
                                  "https://images.pexels.com/photos/1930621/pexels-photo-1930621.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
                            ),
                            Container(
                              height: 50,
                              width: 50,
                              child: Icon(Icons.notifications_active_outlined),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text.rich(
                            TextSpan(
                              text: '', // default text style
                              children: [
                                TextSpan(
                                    text: ' Find the ',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 35,
                                        color: Colors.green)),
                                TextSpan(
                                    text: 'Best ',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 35,
                                        color: Colors.black)),
                                WidgetSpan(
                                    child: Padding(
                                  padding: const EdgeInsets.only(left: 5.0),
                                  child: Text('Services',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 35,
                                          color: Colors.green)),
                                )),
                              ],
                            ),
                          )),
                      StickyHeader(
                        header: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20)),
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                color: Colors.grey[500],
                                blurRadius: 3.0,
                                spreadRadius: -5,
                                offset: Offset(-1, 5),
                              ),
                            ],
                            color: Colors.white,
                          ),
                          alignment: Alignment.center,
                          height: 65,
                          child: Padding(
                            padding:
                                const EdgeInsets.only(left: 25.0, right: 25),
                            child: TextFormField(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SearchItems()),
                                );
                              },
                              onChanged: (value) {
                                //Do something with the user input.
                              },
                              decoration: InputDecoration(
                                suffixIcon: IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.filter_list_outlined),
                                ),
                                prefixIcon: Icon(
                                  Icons.search,
                                  size: 30,
                                ),
                                isDense: true,
                                hintText: 'Search here',
                                hintStyle:
                                    TextStyle(color: Colors.grey.shade400),
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 10.0, horizontal: 20.0),
                                border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(32.0)),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.grey.shade400, width: 1.0),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(32.0)),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.green.shade600, width: 2.0),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(32.0)),
                                ),
                              ),
                            ),
                          ),
                        ),
                        content: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.all(10),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Container(
                                  color: Colors.grey.shade100,
                                  height: 200.0,
                                  width: MediaQuery.of(context).size.width,
                                  child: Carousel(
                                    boxFit: BoxFit.cover,
                                    autoplay: true,
                                    animationCurve: Curves.fastOutSlowIn,
                                    animationDuration:
                                        Duration(milliseconds: 1000),
                                    dotSize: 6.0,
                                    dotIncreasedColor: Colors.white,
                                    dotBgColor: Colors.transparent,
                                    dotPosition: DotPosition.bottomCenter,
                                    dotVerticalPadding: 5.0,
                                    showIndicator: true,
                                    indicatorBgPadding: 5.0,
                                    images: [
                                      NetworkImage(
                                          'https://images.pexels.com/photos/7512888/pexels-photo-7512888.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500'),
                                      NetworkImage(
                                          'https://images.pexels.com/photos/7512951/pexels-photo-7512951.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500'),
                                      NetworkImage(
                                          'https://images.pexels.com/photos/5591833/pexels-photo-5591833.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500'),
                                      NetworkImage(
                                          "https://images.pexels.com/photos/5591636/pexels-photo-5591636.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
                                      NetworkImage(
                                          "https://images.pexels.com/photos/4108715/pexels-photo-4108715.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 12.0, bottom: 5, right: 12),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Category",
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold)),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  AllCategories()),
                                        );
                                      },
                                      child: Text("View all",
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.green,
                                              fontWeight: FontWeight.bold)),
                                    )
                                  ]),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              margin: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [Colors.green.shade200, Colors.white],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                                boxShadow: <BoxShadow>[
                                  BoxShadow(
                                    color: Colors.grey[300],
                                    blurRadius: 3.0,
                                    offset: Offset(0.0, 0.5),
                                  ),
                                ],
                              ),
                              child: Column(
                                children: [
                                  SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    physics: BouncingScrollPhysics(),
                                    child: Row(
                                      children: [
                                        Categories(
                                            "https://images.pexels.com/photos/5591636/pexels-photo-5591636.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
                                        Categories(
                                            "https://images.pexels.com/photos/4108715/pexels-photo-4108715.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
                                        Categories(
                                            "https://images.pexels.com/photos/4684372/pexels-photo-4684372.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
                                        Categories(
                                            "https://images.pexels.com/photos/3987142/pexels-photo-3987142.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
                                        Categories(
                                            "https://images.pexels.com/photos/4239091/pexels-photo-4239091.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
                                        Categories(
                                            "https://images.pexels.com/photos/4353608/pexels-photo-4353608.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
                                        Categories(
                                            "https://images.pexels.com/photos/4099469/pexels-photo-4099469.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
                                        Categories(
                                            "https://images.pexels.com/photos/3951389/pexels-photo-3951389.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 12.0, bottom: 5, right: 12),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Recommended",
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold)),
                                    Text("View all",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.green,
                                            fontWeight: FontWeight.bold))
                                  ]),
                            ),
                            Column(children: [
                              SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  physics: BouncingScrollPhysics(),
                                  child: Row(children: [
                                    Recommended(
                                        "https://images.pexels.com/photos/2726111/pexels-photo-2726111.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
                                    Recommended(
                                        "https://images.pexels.com/photos/697509/pexels-photo-697509.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
                                    Recommended(
                                        "https://images.pexels.com/photos/1382731/pexels-photo-1382731.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
                                    Recommended(
                                        "https://images.pexels.com/photos/2726111/pexels-photo-2726111.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
                                    Recommended(
                                        "https://images.pexels.com/photos/4063530/pexels-photo-4063530.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
                                    Recommended(
                                        "https://images.pexels.com/photos/4063856/pexels-photo-4063856.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
                                    Recommended(
                                        "https://images.pexels.com/photos/2726111/pexels-photo-2726111.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
                                    Recommended(
                                        "https://images.pexels.com/photos/1680172/pexels-photo-1680172.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
                                    Recommended(
                                        "https://images.pexels.com/photos/2726111/pexels-photo-2726111.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
                                    Recommended(
                                        "https://images.pexels.com/photos/2364306/pexels-photo-2364306.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
                                    Recommended(
                                        "https://images.pexels.com/photos/2726111/pexels-photo-2726111.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
                                    Recommended(
                                        "https://images.pexels.com/photos/1930621/pexels-photo-1930621.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
                                  ]))
                            ]),
                            Container(
                              margin: EdgeInsets.all(10),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Container(
                                  color: Colors.grey.shade100,
                                  height: 200.0,
                                  width: MediaQuery.of(context).size.width,
                                  child: Carousel(
                                    boxFit: BoxFit.cover,
                                    autoplay: true,
                                    animationCurve: Curves.fastOutSlowIn,
                                    animationDuration:
                                        Duration(milliseconds: 1000),
                                    dotSize: 6.0,
                                    dotIncreasedColor: Colors.white,
                                    dotBgColor: Colors.transparent,
                                    dotPosition: DotPosition.bottomCenter,
                                    dotVerticalPadding: 5.0,
                                    showIndicator: true,
                                    indicatorBgPadding: 5.0,
                                    images: [
                                      NetworkImage(
                                          'https://images.pexels.com/photos/7512888/pexels-photo-7512888.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500'),
                                      NetworkImage(
                                          'https://images.pexels.com/photos/7512951/pexels-photo-7512951.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500'),
                                      NetworkImage(
                                          'https://images.pexels.com/photos/5591833/pexels-photo-5591833.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500'),
                                      NetworkImage(
                                          "https://images.pexels.com/photos/5591636/pexels-photo-5591636.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
                                      NetworkImage(
                                          "https://images.pexels.com/photos/4108715/pexels-photo-4108715.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 12.0, bottom: 5),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Category",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold)),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  AllCategories()),
                                        );
                                      },
                                      child: Text("View all",
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.green,
                                              fontWeight: FontWeight.bold)),
                                    )
                                  ]),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              margin: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [Colors.green.shade200, Colors.white],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                                boxShadow: <BoxShadow>[
                                  BoxShadow(
                                    color: Colors.grey[300],
                                    blurRadius: 3.0,
                                    offset: Offset(0.0, 0.5),
                                  ),
                                ],
                              ),
                              child: Column(
                                children: [
                                  SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    physics: BouncingScrollPhysics(),
                                    child: Row(
                                      children: [
                                        Categories(
                                            "https://images.pexels.com/photos/5591636/pexels-photo-5591636.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
                                        Categories(
                                            "https://images.pexels.com/photos/4108715/pexels-photo-4108715.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
                                        Categories(
                                            "https://images.pexels.com/photos/4684372/pexels-photo-4684372.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
                                        Categories(
                                            "https://images.pexels.com/photos/3987142/pexels-photo-3987142.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
                                        Categories(
                                            "https://images.pexels.com/photos/4239091/pexels-photo-4239091.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
                                        Categories(
                                            "https://images.pexels.com/photos/4353608/pexels-photo-4353608.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
                                        Categories(
                                            "https://images.pexels.com/photos/4099469/pexels-photo-4099469.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
                                        Categories(
                                            "https://images.pexels.com/photos/3951389/pexels-photo-3951389.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 12.0, bottom: 5),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Recommended",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold)),
                                    Text("View all",
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.green,
                                            fontWeight: FontWeight.bold))
                                  ]),
                            ),
                            Column(children: [
                              SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  physics: BouncingScrollPhysics(),
                                  child: Row(children: [
                                    Recommended(
                                        "https://images.pexels.com/photos/2726111/pexels-photo-2726111.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
                                    Recommended(
                                        "https://images.pexels.com/photos/697509/pexels-photo-697509.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
                                    Recommended(
                                        "https://images.pexels.com/photos/1382731/pexels-photo-1382731.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
                                    Recommended(
                                        "https://images.pexels.com/photos/2726111/pexels-photo-2726111.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
                                    Recommended(
                                        "https://images.pexels.com/photos/4063530/pexels-photo-4063530.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
                                    Recommended(
                                        "https://images.pexels.com/photos/4063856/pexels-photo-4063856.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
                                    Recommended(
                                        "https://images.pexels.com/photos/2726111/pexels-photo-2726111.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
                                    Recommended(
                                        "https://images.pexels.com/photos/1680172/pexels-photo-1680172.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
                                    Recommended(
                                        "https://images.pexels.com/photos/2726111/pexels-photo-2726111.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
                                    Recommended(
                                        "https://images.pexels.com/photos/2364306/pexels-photo-2364306.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
                                    Recommended(
                                        "https://images.pexels.com/photos/2726111/pexels-photo-2726111.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
                                    Recommended(
                                        "https://images.pexels.com/photos/1930621/pexels-photo-1930621.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
                                  ]))
                            ])
                          ],
                        ),
                      ),
                    ],
                  )
                : search
                    ? SearchItems()
                    : whislist
                        ? Wishlist()
                        : profile
                            ? Profile()
                            : Container(),
          ),
        ),
      ),
    );
  }

  Widget buildNavBarItem(IconData icon, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedItemIndex = index;
          if (_selectedItemIndex == 0) {
            dashboard = true;
            search = false;
            whislist = false;
            profile = false;
          } else if (_selectedItemIndex == 1) {
            dashboard = false;
            search = true;
            whislist = false;
            profile = false;
          } else if (_selectedItemIndex == 2) {
            dashboard = false;
            search = false;
            whislist = true;
            profile = false;
          } else if (_selectedItemIndex == 3) {
            dashboard = false;
            search = false;
            whislist = false;
            profile = true;
          }
        });
      },
      child: Container(
        height: 60,
        width: MediaQuery.of(context).size.width / 5,
        decoration: index == _selectedItemIndex
            ? BoxDecoration(
                // border: Border(
                //   bottom: BorderSide(width: 3, color: Colors.green),
                // ),
                gradient: LinearGradient(colors: [
                Colors.green.withOpacity(0.3),
                Colors.green.withOpacity(0.015),
              ], begin: Alignment.bottomCenter, end: Alignment.topCenter)
                // color: index == _selectedItemIndex ? Colors.green : Colors.white,
                )
            : BoxDecoration(),
        child: Icon(
          icon,
          color: index == _selectedItemIndex ? Colors.green : Colors.black,
        ),
      ),
    );
  }

  Widget Recommended(var img) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(children: [
              Container(
                height: 200,
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromRGBO(244, 245, 247, 1),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 130,
                          width: 130,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.white),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.network(
                              "$img",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text(
                          "Waste",
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 12),
                        ),
                        //     child: Container(
                        //     height: 60,
                        //     width: 100,
                        //     decoration:BoxDecoration(
                        //       color: Colors.white,
                        //       borderRadius:BorderRadius.circular(25)
                        //     )
                        //   ),
                        //   // child: Text(
                        //   //   "Waste",
                        //   //   overflow: TextOverflow.ellipsis,
                        //   //   maxLines: 1,
                        //   //   textAlign: TextAlign.center,
                        //   //   style: TextStyle(
                        //   //       fontWeight: FontWeight.w600, fontSize: 12),
                        //   // ),
                        // )
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0, left: 100),
                child: Container(
                  alignment: Alignment.center,
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25)),
                  child: RatingBar.builder(
                    initialRating: 0,
                    minRating: 0,
                    itemSize: 20,
                    direction: Axis.horizontal,
                    allowHalfRating: false,
                    itemCount: 1,
                    itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                    itemBuilder: (context, _) => Icon(
                      Icons.favorite,
                      size: 14,
                      color: Colors.green,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                  //         child:InkWell(
                  //         onTap:(){
                  //           setState((){
                  //               isPressed= true;

                  //           });

                  //           },
                  //           child: Icon(Icons.favorite,size:18,color:(isPressed)? Colors.green
                  // : Colors.grey))
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 115.0, left: 2, right: 2),
                child: Container(
                    height: 80,
                    width: 145,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25)),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Jack Deo",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Lorem",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey.shade400),
                            )
                          ],
                        ),
                        Container(
                          width: 120,
                          child: RatingBar.builder(
                            initialRating: 5,
                            minRating: 5,
                            itemSize: 15,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                            itemBuilder: (context, _) => Icon(
                              Icons.star,
                              size: 14,
                              color: Colors.amber,
                            ),
                            onRatingUpdate: (rating) {
                              print(rating);
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5.0),
                          child: Text("20\$/hr",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        )
                      ],
                    )),
              ),
              // child: Text(
              //   "Waste",
              //   overflow: TextOverflow.ellipsis,
              //   maxLines: 1,
              //   textAlign: TextAlign.center,
              //   style: TextStyle(
              //       fontWeight: FontWeight.w600, fontSize: 12),
              // ),
            ]),
          ),
        ],
      ),
    );
  }
}

Widget Categories(var img) {
  return Container(
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 105,
            width: 90,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color.fromRGBO(244, 245, 247, 1),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 60,
                      width: 60,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.network(
                          "$img",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      "Waste",
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 12),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
