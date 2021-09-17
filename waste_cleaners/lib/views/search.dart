import 'package:flutter/material.dart';
import 'package:sticky_headers/sticky_headers/widget.dart';

class SearchItems extends StatefulWidget {
  @override
  _SearchItemsState createState() => _SearchItemsState();
}

class _SearchItemsState extends State<SearchItems> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SafeArea(
            child: SingleChildScrollView(
          child: Column(
            children: [
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
                    padding: const EdgeInsets.only(left: 25.0, right: 25),
                    child: TextFormField(
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
                        hintStyle: TextStyle(color: Colors.grey.shade400),
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(32.0)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.grey.shade400, width: 1.0),
                          borderRadius: BorderRadius.all(Radius.circular(32.0)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.green.shade600, width: 2.0),
                          borderRadius: BorderRadius.all(Radius.circular(32.0)),
                        ),
                      ),
                    ),
                  ),
                ),
                content: Column(
                  children: [
                    GridView.count(
                      primary: false,
                      padding: const EdgeInsets.all(8),
                      crossAxisSpacing: 10,
                      childAspectRatio: 0.7,
                      crossAxisCount: 2,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
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
                  ],
                ),
              ),
            ],
          ),
        )),
      
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
                              fit: BoxFit.fill,
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
}
