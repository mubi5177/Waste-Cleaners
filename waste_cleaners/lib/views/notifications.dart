import 'package:flutter/material.dart';

class NotificationList extends StatefulWidget {
  const NotificationList({Key key}) : super(key: key);

  @override
  _NotificationListState createState() => _NotificationListState();
}

class _NotificationListState extends State<NotificationList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: MediaQuery.of(context).size.height / 1.1,
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 20),
              height: 5,
              width: 40,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20, bottom: 20),
              child: Text(
                'Notification',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w100,
                    fontSize: 16),
              ),
            ),
            Divider(),
            Container(
              height: MediaQuery.of(context).size.height / 1.3,
              margin: EdgeInsets.only(bottom: 30),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.all(20),
                      child: Text('New Notification'),
                    ),
                    Divider(),
                    ListTile(
                      isThreeLine: true,
                      leading: Image(
                        image: AssetImage('assets/images/Content.png'),
                      ),
                      title: Text('title'),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                              'Buy 1 get 1 free for small sizes until May 30, 2020 when you order via Coody!'),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Time Ago',
                            style: TextStyle(color: Colors.grey, fontSize: 10),
                          ),
                        ],
                      ),
                    ),
                    ListTile(
                      isThreeLine: true,
                      leading: Image(
                        image: AssetImage('assets/images//Content.png'),
                      ),
                      title: Text('title'),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                              'Buy 1 get 1 free for small sizes until May 30, 2020 when you order via Coody!'),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Time Ago',
                            style: TextStyle(color: Colors.grey, fontSize: 10),
                          ),
                        ],
                      ),
                    ),
                    Divider(),
                    Container(
                      padding: EdgeInsets.all(20),
                      child: Text('Earlier Notification'),
                    ),
                    Divider(),
                    ListTile(
                      isThreeLine: true,
                      leading: Image(
                        image: AssetImage('assets/images//Content.png'),
                      ),
                      title: Text('title'),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                              'Buy 1 get 1 free for small sizes until May 30, 2020 when you order via Coody!'),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Time Ago',
                            style: TextStyle(color: Colors.grey, fontSize: 10),
                          ),
                        ],
                      ),
                    ),
                    ListTile(
                      isThreeLine: true,
                      leading: Image(
                        image: AssetImage('assets/images//Content.png'),
                      ),
                      title: Text('title'),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                              'Buy 1 get 1 free for small sizes until May 30, 2020 when you order via Coody!'),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Time Ago',
                            style: TextStyle(color: Colors.grey, fontSize: 10),
                          ),
                        ],
                      ),
                    ),
                    ListTile(
                      isThreeLine: true,
                      leading: Image(
                        image: AssetImage('assets/images//Content.png'),
                      ),
                      title: Text('title'),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                              'Buy 1 get 1 free for small sizes until May 30, 2020 when you order via Coody!'),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Time Ago',
                            style: TextStyle(color: Colors.grey, fontSize: 10),
                          ),
                        ],
                      ),
                    ),
                    ListTile(
                      isThreeLine: true,
                      leading: Image(
                        image: AssetImage('assets/images//Content.png'),
                      ),
                      title: Text('title'),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                              'Buy 1 get 1 free for small sizes until May 30, 2020 when you order via Coody!'),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Time Ago',
                            style: TextStyle(color: Colors.grey, fontSize: 10),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
