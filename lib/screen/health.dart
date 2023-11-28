import 'package:flutter/material.dart';
import 'package:untitled1/widget/task_column.dart';

const PRIMARY = "primary";
const ORANGE = "orange";
const WHITE = "white";

const Map<String, Color> myColors = {
  PRIMARY: Color.fromRGBO(255, 163, 63, 1),
  ORANGE: Color.fromRGBO(255, 209, 89, 1),
  WHITE: Colors.white
};

class Health extends StatefulWidget {
  @override
  _HealthState createState() => _HealthState();
}

class _HealthState extends State<Health> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // appBar: AppBar(
        //   elevation: 0.0,
        //   backgroundColor: const Color(0xffffae3c),
        //   centerTitle: true,
        //   leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
        //   actions: <Widget>[
        //     IconButton(icon: Icon(Icons.people_rounded), onPressed: () {})
        //   ],
        // ),
        key: _scaffoldKey,
        body: Stack(
          fit: StackFit.expand,
          children: [
            // 배경 이미지
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('src/img/back2.png'), // 이미지 경로
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Row(
              children: [
                SizedBox(width: 62,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 115,
                    ),
                    Text(
                      '3',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: 27,
                    ),
                    Text(
                      '5000',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SafeArea(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildTopbarImageButton(
                        'src/img/menu.png',
                            () {
                          _scaffoldKey.currentState?.openDrawer();
                        },
                        40,
                        40,
                        20,
                      ),
                      _buildTopbarImageButton(
                        'src/img/prf.png',
                            () {
                          // Handle profile button tap
                        },
                        45,
                        45,
                        20,
                      ),
                    ],
                  ),
                  // 다른 컨텐츠 추가 가능
                ],
              ),
            ),
            SafeArea(
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SizedBox(height: 90),
                        _buildImageButton(
                          'src/img/Asset 50.png',
                          () {
                            //클릭시
                          },
                          150, // 너비
                          60, // 높이
                        ),
                        _buildImageButton(
                          'src/img/Asset 131.png',
                          () {
                            // 클릭시
                          },
                          75, // 너비
                          50, // 높이
                        ),
                        _buildImageButton(
                          'src/img/Asset 133.png',
                          () {
                            // 버튼 2를 클릭했을 때 동작
                          },
                          75, // 너비
                          50, // 높이
                        ),
                        _buildImageButton(
                          'src/img/top.png',
                          () {
                            // 버튼 3을 클릭했을 때 동작
                          },
                          75, // 너비
                          50, // 높이
                        ),
                        _buildImageButton(
                          'src/img/Asset 135.png',
                          () {
                            // 버튼 2를 클릭했을 때 동작
                          },
                          75, // 너비
                          50, // 높이
                        ),
                        _buildImageButton(
                          'src/img/Asset 136.png',
                          () {
                            // 버튼 2를 클릭했을 때 동작
                          },
                          75, // 너비
                          50, // 높이
                        ),
                        // 추가적으로 필요한 만큼 버튼을 추가할 수 있습니다.
                      ],
                    ),
                  ),
                  SizedBox(width: 8)
                ],
              ),
            ),
          ],
        ),
        drawer: Drawer(
          backgroundColor: myColors[PRIMARY],
          width: 200,
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    _buildTopbarImageButton(
                      'src/img/menu.png',
                          () {
                        _scaffoldKey.currentState?.openDrawer();
                      },
                      40,
                      40,
                      0,
                    ),
                  ],
                ),
              ),
              ListTile(
                title: Text('•Home'),
                onTap: (){}
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text('Profile'),
                  onTap: (){}
              ),
              ListTile(
                leading: Icon(Icons.phone),
                title: Text('Phone'),
                  onTap: (){}
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
                  onTap: (){}
              ),
              Divider(height: 1,),
              ListTile(
                leading: Icon(Icons.exit_to_app),
                title: Text('Logout'),
                  onTap: (){}
              ),




            ],



          ),
        ),
      ),
    );
  }

  Widget _buildImageButton(
      String imagePath, Function() onTap, double width, double height) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        margin: EdgeInsets.all(2),
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(imagePath),
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }

  Widget _buildTopbarImageButton(
      String imagePath, Function() onTap, double width, double height, double left) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        margin: EdgeInsets.only(top: 7, left: left, right: 20),
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(imagePath),
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
