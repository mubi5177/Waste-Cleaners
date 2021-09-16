import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class AllCategories extends StatefulWidget { 
  @override
  _AllCategoriesState createState() => _AllCategoriesState();
}

class _AllCategoriesState extends State<AllCategories> {
    int _selectedItemIndex = 0;
  bool isPressed = false;
 
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
          // boxShadow: <BoxShadow>[
          //   BoxShadow(
          //     color: Colors.grey[100],
          //     blurRadius: 1.0,
          //     offset: Offset(0.0, 0.1),
          //   ),
          // ],
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
      body:SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child:Padding(
            padding: const EdgeInsets.all(15.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      alignment: Alignment.center,
                      height:70,
                      width:300,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black,
                              spreadRadius: 2,
                              blurRadius: 3,
                              offset: Offset(0, 2), // changes position of shadow
                            ),
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25)),
                          child: Text("All Categories",style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25
                          ),),
                    ),
                  ),
               GridView.count(
                primary: false,
                padding: const EdgeInsets.all(8),
                crossAxisSpacing: 10,
                childAspectRatio: 0.7,
                crossAxisCount: 2,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  Recommended(),
                  Recommended(),
                  Recommended(),
                  Recommended(),
                    Recommended(),
                  Recommended(),
                  Recommended(),
                  Recommended(),
                   Recommended(),
                  Recommended(),
                  Recommended(),
                  Recommended(),
                    Recommended(),
                  Recommended(),
                  Recommended(),
                  Recommended(),
                    Recommended(),
                  Recommended(),
                  Recommended(),
                  Recommended(),
                    Recommended(),
                  Recommended(),
                  Recommended(),
                  Recommended(),
                   Recommended(),
                  Recommended(),
                  Recommended(),
                  Recommended(),
                    Recommended(),
                  Recommended(),
                  Recommended(),
                  Recommended(),
                ],
              ),
                ],
              ),
            ),
          )
        ),
      )
      
    );
  }
   Widget Recommended() {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(children: [
              Container(
                height: 190,
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
                            child: Image.asset(
                              "assets/images/logo.png",
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

                              fontWeight: FontWeight.bold, fontSize: 20),
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
                padding: const EdgeInsets.only(top: 20.0, left: 90),
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
              // Padding(
              //   padding: const EdgeInsets.only(top: 120.0, left: 2),
              //   child: Container(
              //       height: 80,
              //       width: 145,
              //       decoration: BoxDecoration(
              //           color: Colors.white,
              //           borderRadius: BorderRadius.circular(25)),
              //       child: Column(
              //         children: [
              //           Row(
              //             mainAxisAlignment: MainAxisAlignment.center,
              //             children: [
              //               Text(
              //                 "Jack Deo",
              //                 style: TextStyle(
              //                     fontSize: 15, fontWeight: FontWeight.bold),
              //               )
              //             ],
              //           ),
              //           Row(
              //             mainAxisAlignment: MainAxisAlignment.center,
              //             children: [
              //               Text(
              //                 "Lorem",
              //                 style: TextStyle(
              //                     fontSize: 12,
              //                     fontWeight: FontWeight.bold,
              //                     color: Colors.grey.shade400),
              //               )
              //             ],
              //           ),
              //           Container(
              //             width: 120,
              //             child: RatingBar.builder(
              //               initialRating: 5,
              //               minRating: 5,
              //               itemSize: 15,
              //               direction: Axis.horizontal,
              //               allowHalfRating: true,
              //               itemCount: 5,
              //               itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
              //               itemBuilder: (context, _) => Icon(
              //                 Icons.star,
              //                 size: 14,
              //                 color: Colors.amber,
              //               ),
              //               onRatingUpdate: (rating) {
              //                 print(rating);
              //               },
              //             ),
              //           ),
              //           Padding(
              //             padding: const EdgeInsets.only(top: 5.0),
              //             child: Text("20\$/hr",
              //                 style: TextStyle(fontWeight: FontWeight.bold)),
              //           )
              //         ],
              //       )),
              // ),
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
  Widget buildNavBarItem(IconData icon, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedItemIndex = index;
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
}