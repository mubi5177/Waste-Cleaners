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
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.white,
          title: Text(
            'All Categories',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
          ),
          actions: [
            GestureDetector(
              onTap: () {
                
              },
              child: Image(
                image: AssetImage('assets/images/notifications.png'),
              ),
            ),
            SizedBox(
              width: 10,
            ),
          ],
        ),
      //   bottomNavigationBar: Container(
      //   decoration: BoxDecoration(
      //     gradient: LinearGradient(
      //       colors: [Colors.green.shade200, Colors.white],
      //       begin: Alignment.topLeft,
      //       end: Alignment.bottomRight,
      //     ),
      //     borderRadius: BorderRadius.circular(20),
      //     boxShadow: <BoxShadow>[
      //       BoxShadow(
      //         color: Colors.grey[300],
      //         blurRadius: 3.0,
      //         offset: Offset(0.0, 0.5),
      //       ),
      //     ],
      //   ),
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //     children: <Widget>[
      //       buildNavBarItem(Icons.home_outlined, 0),
      //       buildNavBarItem(Icons.search, 1),
      //       buildNavBarItem(Icons.favorite_outline, 2),
      //       buildNavBarItem(Icons.person_outline_outlined, 3),
      //     ],
      //   ),
      // ),
      body:SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child:Padding(
            padding: const EdgeInsets.all(15.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // Padding(
                  //   padding: const EdgeInsets.all(12.0),
                  //   child: Container(
                  //     alignment: Alignment.center,
                  //     height:70,
                  //     width:300,
                  //       decoration: BoxDecoration(
                  //         boxShadow: [
                  //           BoxShadow(
                  //             color: Colors.black,
                  //             spreadRadius: 1,
                  //             blurRadius: 1,
                  //             offset: Offset(0, 0.5), // changes position of shadow
                  //           ),
                  //         ],
                  //         color: Colors.white,
                  //         borderRadius: BorderRadius.circular(25)),
                  //         child: Text("All Categories",style: TextStyle(
                  //           fontWeight: FontWeight.bold,
                  //           fontSize: 25
                  //         ),),
                  //   ),
                  // ),
               GridView.count(
                primary: false,
                padding: const EdgeInsets.all(8),
                crossAxisSpacing: 10,
                childAspectRatio: 0.7,
                crossAxisCount: 2,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                            Categories("https://images.pexels.com/photos/5591636/pexels-photo-5591636.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
                            Categories("https://images.pexels.com/photos/4108715/pexels-photo-4108715.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
                            Categories("https://images.pexels.com/photos/4684372/pexels-photo-4684372.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
                            Categories("https://images.pexels.com/photos/3987142/pexels-photo-3987142.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
                            Categories("https://images.pexels.com/photos/4239091/pexels-photo-4239091.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
                            Categories("https://images.pexels.com/photos/4353608/pexels-photo-4353608.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
                            Categories("https://images.pexels.com/photos/4099469/pexels-photo-4099469.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
                            Categories("https://images.pexels.com/photos/3951389/pexels-photo-3951389.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
                          
                            Categories("https://images.pexels.com/photos/5591636/pexels-photo-5591636.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
                            Categories("https://images.pexels.com/photos/4108715/pexels-photo-4108715.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
                            Categories("https://images.pexels.com/photos/4684372/pexels-photo-4684372.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
                            Categories("https://images.pexels.com/photos/3987142/pexels-photo-3987142.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
                            Categories("https://images.pexels.com/photos/4239091/pexels-photo-4239091.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
                            Categories("https://images.pexels.com/photos/4353608/pexels-photo-4353608.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
                            Categories("https://images.pexels.com/photos/4099469/pexels-photo-4099469.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
                            Categories("https://images.pexels.com/photos/3951389/pexels-photo-3951389.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
                          
                            Categories("https://images.pexels.com/photos/5591636/pexels-photo-5591636.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
                            Categories("https://images.pexels.com/photos/4108715/pexels-photo-4108715.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
                            Categories("https://images.pexels.com/photos/4684372/pexels-photo-4684372.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
                            Categories("https://images.pexels.com/photos/3987142/pexels-photo-3987142.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
                            Categories("https://images.pexels.com/photos/4239091/pexels-photo-4239091.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
                            Categories("https://images.pexels.com/photos/4353608/pexels-photo-4353608.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
                            Categories("https://images.pexels.com/photos/4099469/pexels-photo-4099469.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
                            Categories("https://images.pexels.com/photos/3951389/pexels-photo-3951389.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
                          
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
   Widget Categories(var img) {
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

                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        
                      )
                    ],
                  ),
                ),
              ),
               
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