import 'package:flutter/material.dart';


class TabBarPag extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {

    return null;
  }
}


class TableBarState extends State <TabBarPag> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return new Scaffold (
      appBar: AppBar(
        title: Text("首页"),
      ),
      bottomNavigationBar: _getBottomNavigationBar(context),
    );
  }

  Widget _getBottomNavigationBar(BuildContext context) {
    Color color = Theme.of(context).primaryColor;
    return BottomNavigationBar(
      items: [
        _barItem(Icons.home,"首页",color, 0),
        _barItem(Icons.videocam,"视频",color, 1),
        _barItem(Icons.person,"我的",color, 2),
      ],
      currentIndex: _selectedIndex,
      type: BottomNavigationBarType.fixed,
      onTap: (int index) {
        setState(() {
          _selectedIndex = index;
        });
      },
    );
  }

  BottomNavigationBarItem _barItem(IconData data, String text,Color color, int itemIndex){

    Color itemColor = itemIndex == _selectedIndex ? color : Colors.grey;
    return BottomNavigationBarItem(
      icon:Icon(data,
        color: itemColor,
      ),
      title: Text(
        text,
        style: TextStyle(
          color:itemColor,
        ),
      ),
      backgroundColor: Colors.black,
//        activeIcon:Icon(Icons.hot_tub,color: Colors.green,),
    );
  }
}



































