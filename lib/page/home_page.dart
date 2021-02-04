import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {


  Widget _buildAppBar(){
    return AppBar(
      centerTitle: true,
      elevation: 0,
      backgroundColor: Color(0xFFFAFAFA),
      leading: IconButton(
        icon: Image.asset('assets/images/camera_icon.png',color: Colors.black,height: 30.0,),
        onPressed: () =>print("Camera"),
      ),
      title: Image.asset('assets/images/instagram_logo.png',height: 50.0,),
      actions:<Widget> [
        IconButton(
            icon: Image.asset('assets/images/direct_icon.png',color: Colors.black,height: 30.0,)
        ),
      ],
    );
  }

  Widget _buildTitleStory(){
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Stories',style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold)),
        FlatButton(
          onPressed: () => print("Watch all"),
          child: Row(
            children: [
              Icon(Icons.arrow_right,size: 25.0,color:Colors.black),
              Text(
                'Watch all',
                style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.black
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget _buildItemStory(String image, String name){
    return  Container(
      padding: EdgeInsets.only(right: 15.0),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.0),
              border: Border.all(
                  width: 2,
                  color: Colors.pink
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50.0),
                border: Border.all(
                    width: 2,
                    color: Colors.white
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50.0),
                child: Image.asset(
                  image,
                  height: 50.0,
                  width: 50.0,fit: BoxFit.fitWidth,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.0),
          Text(name,style: TextStyle(fontSize: 12.0),)
        ],
      ),
    );
  }

  Widget _buildHorizontalStories(){
    return Container(
      width: double.infinity,
      height: 80.0,
      child: ListView(
        // This next line does the trick.
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          _buildItemStory('assets/images/girl_1.png','Thủy bé'),
          _buildItemStory('assets/images/girl_2.png','nene'),
          _buildItemStory('assets/images/girl_3.png','Thảo bé'),
          _buildItemStory('assets/images/girl_4.png','Huyền bé'),
          _buildItemStory('assets/images/girl_5.png','Hoàng bé'),
          _buildItemStory('assets/images/girl_1.png','Thủy bé'),
          _buildItemStory('assets/images/girl_2.png','nene'),
          _buildItemStory('assets/images/girl_3.png','Thảo bé'),
        ],
      ),
    );
  }

  Widget _buildHeaderPost(String avatar,String name){
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children:<Widget> [
        Row(
          children:<Widget> [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50.0),
                border: Border.all(
                    width: 2,
                    color: Colors.pink
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.0),
                  border: Border.all(
                      width: 2,
                      color: Colors.white
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50.0),
                  child: Image.asset(
                    avatar,
                    height: 25.0,
                    width: 25.0,fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ),
            SizedBox(width: 10.0),
            Text(name,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15.0))
          ],
        ),
        IconButton(
          icon: Icon(Icons.more_horiz,color: Colors.black),
        )
      ],
    );
  }

  Widget _buildImagePost(String image){
    return  Container(
      padding: EdgeInsets.only(right: 15.0),
      child: AspectRatio(
        aspectRatio: 1,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Image.asset(
            image,
            height: 25.0,
            width: 25.0,fit: BoxFit.fitWidth,
          ),
        ),
      ),
    );
  }

  Widget _buildActionButtonPost(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            IconButton(
                icon: Image.asset('assets/images/like_icon.png',height: 20.0,)
            ),
            IconButton(
                icon: Image.asset('assets/images/comment_icon.png',height: 20.0,)
            ),
            IconButton(
                icon: Image.asset('assets/images/direct_icon.png',height: 30.0,)
            )
          ],
        ),
        IconButton(
            icon: Image.asset('assets/images/save_icon.png',height: 30.0,)
        )
      ],
    );
  }

  Widget _buildCaption(String name,String caption){
    return Row(
      children: [
        Text(name,style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),),
        SizedBox(width: 10.0,),
        Text(caption)
      ],
    );
  }


  Widget _buildPost(String avatar,String name ,String image,String caption){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:<Widget> [
        _buildHeaderPost(avatar, name),
        _buildImagePost(image),
        _buildActionButtonPost(),
        Text('2875 Likes', style: TextStyle(fontWeight: FontWeight.bold)),
        _buildCaption(name, caption)
      ],
    );
  }

  Widget _buildVerticalPosts(){
    return Container(
      width: double.infinity,
      child: ListView(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        children: [
          _buildPost('assets/images/girl_1.png', 'Thủy bé', 'assets/images/girl_1.png', 'Hôm nay tôi buồn'),
          Divider(color: Colors.grey, thickness: 0.5),
          _buildPost('assets/images/girl_3.png', 'Thảo bé', 'assets/images/girl_3.png', 'Hôm nay ai đi chơi không'),
          Divider(color: Colors.grey, thickness: 0.5),
          _buildPost('assets/images/girl_4.png', 'Huyền bé', 'assets/images/girl_4.png', 'Hôm nay trời mưa mất rồi'),
        ],
      ),
    );
  }

  Widget _buildBody(){
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(left: 15.0),
      child: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Column(
          children:<Widget> [
            _buildTitleStory(),
            _buildHorizontalStories(),
            Divider(color: Colors.grey, thickness: 0.5),
            _buildVerticalPosts(),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }
}
