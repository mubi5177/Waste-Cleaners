import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
 

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
   int _selectedItemIndex = 0;
     bool isPressed=false;
     bool _isPressed=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:  Container(
        
    
         
             decoration: BoxDecoration(
           
          gradient: LinearGradient(
            colors: [Colors.green.shade200,Colors.white],
            begin: Alignment.topLeft,
            end:Alignment.bottomRight,
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
          mainAxisAlignment:MainAxisAlignment.spaceBetween,
          children: <Widget>[
            InkWell(
              onTap: (){
                
              },
              child: buildNavBarItem(Icons.home_outlined, 0)),
            buildNavBarItem(Icons.search, 1),
            buildNavBarItem(Icons.favorite_outline, 2),          
            buildNavBarItem(Icons.person_outline_outlined, 3),
          ],
        ),
      ),
      body: SafeArea(
        child: Container(
         color:Colors.white,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: SingleChildScrollView(
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        clipBehavior:Clip.hardEdge,
                        decoration: BoxDecoration(
                          borderRadius:BorderRadius.circular(30),
                          
                        ),
                        height: 40,
                        width: 40,
                        child: Image.network("https://www.kindpng.com/picc/m/22-223941_transparent-avatar-png-male-avatar-icon-transparent-png.png"),
                        
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
                  child:Text.rich(
              TextSpan(
                
                text: '', // default text style
                children: [
                  TextSpan(text: ' Find the ', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35,color:Colors.green)),
                  TextSpan(text: 'Best ', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35,color:Colors.black)),
                  WidgetSpan(child: Padding(
                    padding: const EdgeInsets.only(left:5.0),
                    child: Text('Services', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35,color:Colors.green)),
                  )),
                ],
              ),
            )
                  
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: TextFormField(
               
                      
                      onChanged: (value) {
                        //Do something with the user input.
                      },
                      decoration: InputDecoration(
                         suffixIcon: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.filter_list_outlined),
                ),
                            prefixIcon: Icon(Icons.search,size: 30,),
                         isDense: true,
                        hintText: 'Search here',
                        hintStyle: TextStyle(
                          color:Colors.grey.shade400
                        ),
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(32.0)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey.shade400, width: 1.0),
                          borderRadius: BorderRadius.all(Radius.circular(32.0)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.green.shade600, width: 2.0),
                          borderRadius: BorderRadius.all(Radius.circular(32.0)),
                        ),
                      ),
                    ),
                  ),
                ),
                    Container(
                                  margin: EdgeInsets.all(10),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Container(
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
                                          AssetImage('assets/images/logo.png'),
                                          AssetImage('assets/images/logo.png'),
                                          AssetImage('assets/images/logo.png'),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left:12.0,bottom:5),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children:[
                                    Text("Category",style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold
                                    )),
                                       Text("View all",style: TextStyle(
                                      fontSize: 12,
                                      color:Colors.green,
                                      fontWeight: FontWeight.bold
                                    ))
                                  ]),
                                ),
                                Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
               
              gradient: LinearGradient(
                colors: [Colors.green.shade200,Colors.white],
                begin: Alignment.topLeft,
                end:Alignment.bottomRight,
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
                    children:[
            Categories(),
            Categories(),
            Categories(),
            Categories(),
            Categories(),
            Categories(),
            Categories(),
            Categories(),
            
                    ],
                  ),
      
                
                ),
              
              ],
                    ),
                  ),
                   Padding(
                                  padding: const EdgeInsets.only(left:12.0,bottom:5),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children:[
                                    Text("Recommended",style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold
                                    )),
                                       Text("View all",style: TextStyle(
                                      fontSize: 12,
                                      color:Colors.green,
                                      fontWeight: FontWeight.bold
                                    ))
                                  ]),
                                ),
                                Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  child: Row(
                    children:[
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
                    ]))])
              ]),
            ),
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
  Widget Recommended(){

  return Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Stack(
                    children:[ Container(
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
                              onTap: () {
                             
                              },
                              child: Container(
                                height: 130,
                                width: 130,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.white
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: Image.asset("assets/images/logo.png",fit: BoxFit.cover,),
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
                      padding: const EdgeInsets.only(top:20.0,left:100),
                      child: Container(
                        alignment: Alignment.center,
                                height: 30,
                                width: 30,
                                decoration:BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:BorderRadius.circular(25)
                                ),
                                child:InkWell(
                                onTap:(){
                                  setState((){
                                      isPressed= true;
                                  
                                    
                                  });

                                  },
                                  child: Icon(Icons.favorite,size:18,color:(isPressed)? Colors.green
                        : Colors.grey))
                              ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:120.0,left:2),
                      child: Container(
                                height: 80,
                                width: 145,
                                decoration:BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:BorderRadius.circular(25)
                                ),
                                child:Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                      Text("Jack Deo",style: TextStyle(fontSize:15,fontWeight: FontWeight.bold),)
                                    ],),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                      Text("Lorem",style: TextStyle(fontSize:12,fontWeight: FontWeight.bold,color: Colors.grey.shade400),)
                                    ],),
                                     

                                  ],
                                )
                              ),
                    ),
                            // child: Text(
                            //   "Waste",
                            //   overflow: TextOverflow.ellipsis,
                            //   maxLines: 1,
                            //   textAlign: TextAlign.center,
                            //   style: TextStyle(
                            //       fontWeight: FontWeight.w600, fontSize: 12),
                            // ),
                          ]
                  ),
                ),
              ],
            ),
          );
}
 
}



Widget Categories(){
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
                            onTap: () {
                           
                            },
                            child: Container(
                              height: 60,
                              width: 60,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.white
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Image.asset("assets/images/logo.png",fit: BoxFit.cover,),
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

