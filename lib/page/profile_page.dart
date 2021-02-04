import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  static const divider = Divider(color: Colors.grey,thickness: 0.5,height: 1.0,);

  Widget _buildAppbar(){
    return AppBar(
      iconTheme: IconThemeData(color: Colors.black87),
      backgroundColor: Color(0xFFFAFAFA),
      elevation: 0,
      leading: IconButton(
        icon: Icon(Icons.add,color: Colors.black87,),
        onPressed: () => _buildBottomSheetCreateNew(),
      ),
      title: InkWell(
        onTap: () => _buildBottomSheetChangeAccount(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Thủy bé',
              style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.black
              ),
            ),
            Icon(Icons.keyboard_arrow_down_outlined,size: 25.0,color:Colors.black),
          ],
        ),
      ),
    );
  }

  Widget _buildDrawer(){
    return Drawer(
      child: ListView(
        children: <Widget>[
          Container(
            height: 50,
            child: DrawerHeader(
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(color: Colors.grey,width: 0.3)
                  )
              ),
              child: Text(
                'Thủy bé',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
              ),
            ),
          ),

          ListTile(
            leading: Icon(Icons.archive),
            title: Text('Archive'),
          ),
          ListTile(
            leading: Icon(Icons.alarm_sharp),
            title: Text('Your activity'),
          ),
          ListTile(
            leading: Icon(Icons.qr_code),
            title: Text('QR code'),
          ),
          ListTile(
            leading: Icon(Icons.save),
            title: Text('Saved'),
          ),
          ListTile(
            leading: Icon(Icons.list),
            title: Text('Close Friends'),
          ),
          ListTile(
            leading: Icon(Icons.person_add),
            title: Text('Discover People'),
          ),
        ],
      ),
    );
  }


  void _buildBottomSheetCreateNew(){
    showModalBottomSheet(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: const Radius.circular(15.0),
                topRight: const Radius.circular(15.0))),
        context: context,builder: (context){
      return Container(
        padding: EdgeInsets.only(top: 20.0),
        child: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child: Column(
            children:<Widget> [
              Text('Create New',style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold)),
              SizedBox(height: 10.0,),
              divider,
              ListTile(
                leading: Icon(Icons.grid_on_sharp),
                title: Text('Feed Post'),
              ),
              divider,
              ListTile(
                leading: Icon(Icons.add_circle_outline),
                title: Text('Story'),
              ),
              divider,
              ListTile(
                leading: Icon(Icons.history),
                title: Text('Story Highlight'),
              ),
              divider,
              ListTile(
                leading: Icon(Icons.ondemand_video_outlined),
                title: Text('IGTV Video'),
              ),
              divider,
              ListTile(
                leading: Icon(Icons.book_outlined),
                title: Text('Guide'),
              ),
            ],
          ),
        ),
      );
    });
  }

  void _buildBottomSheetChangeAccount(){
    showModalBottomSheet(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: const Radius.circular(15.0),
                topRight: const Radius.circular(15.0))),
        context: context,builder: (context){
      return Container(
        padding: EdgeInsets.only(top: 30.0),
        height: 200.0,
        child: Column(
          children:<Widget> [
            ListTile(
              leading:  Container(
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
              title: Text('Thủy bé'),
              trailing: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      color: Colors.blue
                  ),
                  width: 20.0,
                  height: 20.0,
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.0),
                        color: Colors.white
                    ),
                    width: 5.0,
                    height: 5.0,
                  )
              ),
            ),
            ListTile(
              leading: Container(
                  width: 40.0,
                  height: 40.0,
                  decoration: BoxDecoration(
                    border: Border.all(width: 0.5,color: Colors.grey),
                    borderRadius: BorderRadius.circular(50.0),
                    color: Colors.white,
                  ),
                  child: Icon(Icons.add,color: Colors.black,)
              ),
              title: Text('Add account'),
            )
          ],
        ),
      );
    });
  }

  Widget _buildButtonEditProfile(){
    return Container(
      margin: EdgeInsets.only(top: 10.0,left: 15,right: 15),
      width: double.infinity,
      height: 30.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50.0),
        color: Colors.white,
        border: Border.all(
          width: 2,
          color: Colors.white,
        ),
      ),
      child: OutlineButton(
        onPressed: () => print('Edit profile'),
        child: Text(
          "Edit profile",
          style: TextStyle(
              color: Colors.black,
              fontSize: 13.0
          ),
        ),
      ),
    );
  }

  Widget _buildInfo(){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
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
                  width: 70.0,
                  height: 70.0,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50.0),
                    child: Image.asset(
                      'assets/images/girl_1.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Container(
                    alignment: Alignment.bottomRight,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.0)
                    ),
                    width: 70.0,
                    height: 70.0,
                    child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50.0),
                            color: Colors.blue
                        ),
                        width: 20.0,
                        height: 20.0,
                        child: Icon(Icons.add,color: Colors.white,size: 18.0,))
                )
              ],
            ),
          ),

          Column(
            children: [
              Text('13',style: TextStyle(fontWeight: FontWeight.bold),),
              Text('Posts')
            ],
          ),
          Column(
            children: [
              Text('212',style: TextStyle(fontWeight: FontWeight.bold),),
              Text('Followers')
            ],
          ),
          Column(
            children: [
              Text('472',style: TextStyle(fontWeight: FontWeight.bold),),
              Text('Following')
            ],
          )
        ],
      ),
    );
  }

  Widget _buildMyImage(){
    return Container(
      width: double.infinity,
      child: GridView.extent(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        maxCrossAxisExtent: 150,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        children: [
          Image.asset('assets/images/girl_1.png',fit: BoxFit.fill),
          Image.asset('assets/images/girl_2.png',fit: BoxFit.fill),
          Image.asset('assets/images/girl_3.png',fit: BoxFit.fill),
          Image.asset('assets/images/girl_4.png',fit: BoxFit.fill),
          Image.asset('assets/images/girl_5.png',fit: BoxFit.fill),
          Image.asset('assets/images/girl_1.png',fit: BoxFit.fill),
          Image.asset('assets/images/girl_2.png',fit: BoxFit.fill),
          Image.asset('assets/images/girl_3.png',fit: BoxFit.fill),
          Image.asset('assets/images/girl_4.png',fit: BoxFit.fill),
          Image.asset('assets/images/girl_5.png',fit: BoxFit.fill),
          Image.asset('assets/images/girl_4.png',fit: BoxFit.fill),
          Image.asset('assets/images/girl_5.png',fit: BoxFit.fill),
        ],
      ),
    );
  }

  Widget _buildTagImage(){
    return Container(
      width: double.infinity,
      child: GridView.extent(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        maxCrossAxisExtent: 150,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        children: [
          Image.asset('assets/images/girl_1.png',fit: BoxFit.fill),
          Image.asset('assets/images/girl_2.png',fit: BoxFit.fill),
          Image.asset('assets/images/girl_3.png',fit: BoxFit.fill),
          Image.asset('assets/images/girl_4.png',fit: BoxFit.fill),
          Image.asset('assets/images/girl_5.png',fit: BoxFit.fill),
        ],
      ),
    );
  }

  Widget _buildTabBar(){
    return Container(
      height: 700,
      width: double.infinity,
      child: DefaultTabController(
        length: 2,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TabBar(
              indicatorColor: Colors.grey,
              tabs:<Widget> [
                Tab(icon: Icon(Icons.grid_on,color: Colors.black,size: 20,)),
                Tab(icon: Icon(Icons.person_pin_rounded,color: Colors.grey,size: 20,)),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  _buildMyImage(),
                  _buildTagImage(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildBody(){
    return  Container(
      child: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildInfo(),
            SizedBox(height: 5.0),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: Text('Thủy bé',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0))),
            _buildButtonEditProfile(),
            SizedBox(height: 10,),
            Divider(height: 5,color: Colors.grey,thickness: 0.3,),
            _buildTabBar()
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _buildAppbar(),
        endDrawer: _buildDrawer(),
        body:_buildBody()
    );
  }
}