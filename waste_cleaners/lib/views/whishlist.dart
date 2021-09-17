import 'package:flutter/material.dart';

class Wishlist extends StatefulWidget {
  @override
  _WishlistState createState() => _WishlistState();
}

class _WishlistState extends State<Wishlist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.white,
          title: Text(
            'WishList',
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
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child:
            ListView.builder(itemCount: 10,itemBuilder: (BuildContext context, int index) {
              
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              
              title: Text('Waste'),
              isThreeLine: true,
              subtitle: Text('Secondary text\nTertiary text'),
              leading: Container(

                clipBehavior: Clip.hardEdge,
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  
                  borderRadius: BorderRadius.circular(20),
                  
                ),
                child: Image.network("https://images.pexels.com/photos/4684372/pexels-photo-4684372.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500")),
              trailing: Text('Metadata'),
            ),
          );
          })),
      ),
    );
  }
}
 