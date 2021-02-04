import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {

  static const sizeboxWidth = SizedBox(width: 10);
  static const sizeboxHeight = SizedBox(height: 15);

  Widget _buildAppbar(){
    return AppBar(
        backgroundColor: Color(0xFFFAFAFA),
        title: Text('Activity' ,style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold,color: Colors.black))
    );
  }

  Widget _buildItemListView(bool visibility){
    return Container(
      padding: EdgeInsets.only(top: 15),
      child: Row(
        children:<Widget> [
          Container(
            width: 40.0,
            height: 40.0,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50.0),
              child: Image.asset(
                'assets/images/girl_1.png',
                fit: BoxFit.fill,
              ),
            ),
          ),
          sizeboxWidth,
          Flexible(
              child: Text(
                'chào em anh đứng đây từ chiều đó em có biết không',
                overflow: TextOverflow.visible,
              )
          ),
          sizeboxWidth,
          Container(
            height: 20,
            width: 60,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: Colors.blue
            ),
            child: InkWell(
                onTap: () => print('Follow'),
                child: Text('Follow', style: TextStyle(color: Colors.white,fontSize: 12))),
          ),
          SizedBox(width: 1.0),
          Visibility(
            visible: visibility,
            child: Container(
              height: 20,
              width: 60,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  border: Border.all(color: Colors.grey,width: 0.5),
                  color: Colors.white
              ),
              child: InkWell(
                  onTap: () => print('Delete'),
                  child: Text('Delete', style: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.bold))),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildNotificationFollowRequest(){
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50.0),
        border: Border.all(
            width: 2,
            color: Colors.white
        ),
      ),
      child: Stack(
        children: [
          Container(
            width: 40.0,
            height: 40.0,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50.0),
              child: Image.asset(
                'assets/images/girl_1.png',
                fit: BoxFit.fill,
              ),
            ),
          ),
          Container(
              alignment: Alignment.topRight,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.0)
              ),
              width: 40.0,
              height: 40.0,
              child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      color: Colors.red
                  ),
                  width: 20.0,
                  height: 20.0,
                  child: Text('31',style: TextStyle(color: Colors.white))
              )
          )
        ],
      ),
    );
  }

  Widget _buildFollowRequest(){
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15),
      child: Row(
        children: [
          _buildNotificationFollowRequest(),
          SizedBox(width: 15.0,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Follow Requests',style: TextStyle(fontSize: 15),),
              Text('Approve or ignore requests',style: TextStyle(fontSize: 13,color: Colors.grey)),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildBody(){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: ListView(
        physics: AlwaysScrollableScrollPhysics(),
        children: [
          _buildFollowRequest(),
          Text('Today',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
          _buildItemListView(false),
          _buildItemListView(false),
          _buildItemListView(false),
          _buildItemListView(true),
          sizeboxHeight,
          Text('This Week',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
          _buildItemListView(false),
          _buildItemListView(false),
          _buildItemListView(false),
          sizeboxHeight,
          Text('This Month',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
          _buildItemListView(false),
          _buildItemListView(false),
          _buildItemListView(true),
          _buildItemListView(false),
          _buildItemListView(false),
          _buildItemListView(false),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppbar(),
      body: _buildBody(),
    );
  }
}

