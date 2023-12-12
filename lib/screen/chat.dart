import 'package:flutter/material.dart';
import 'package:untitled1/widget/task_column.dart';
import 'package:table_calendar/table_calendar.dart';

const PRIMARY = "primary";
const ORANGE = "orange";
const WHITE = "white";

const Map<String, Color> myColors = {
  PRIMARY: Color.fromRGBO(255, 163, 63, 1),
  ORANGE: Color.fromRGBO(255, 209, 89, 1),
  WHITE: Colors.white
};

class Diary1 extends StatefulWidget {
  @override
  _Diary1State createState() => _Diary1State();
}

class _Diary1State extends State<Diary1> {
  CalendarFormat format = CalendarFormat.month;
  DateTime selectedDay = DateTime.now();
  DateTime focusedDay = DateTime.now();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
  }

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
                    image: AssetImage('src/img/diaryback.png'), // 이미지 경로
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SafeArea(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildTopbarImageButton(
                          'src/img/Asset 2.png',
                              () {
                            _scaffoldKey.currentState?.openDrawer();
                          },
                          40,
                          40,
                          20,
                          0,
                        ),
                        _buildTopbarImageButton(
                          'src/img/diarytext.png',
                              () {
                            // Handle profile button tap
                          },
                          120,
                          60,
                          40,
                          10,
                        ),
                        _buildTopbarImageButton(
                          'src/img/Asset 4.png',
                              () {
                            // Handle profile button tap
                          },
                          45,
                          45,
                          0,
                          0,
                        ),
                      ],
                    ),
                  ],

                ),
              ),

              SafeArea(
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          _buildImageButton('src/img/diaryimageinput.png', () {
                            //클릭시
                          },
                              360,
                              // 너비
                              320,
                              // 높이
                              0,
                              10,
                              0,
                              0),
                          _buildImageButton('src/img/diarytextinput.png', () {
                            // 버튼 3을 클릭했을 때 동작
                          },
                              360,
                              // 너비
                              200,
                              // 높이
                              0,
                              10,
                              0,
                              0),
                          Row(
                            children : [
                            _buildImageButton('src/img/Asset 7.png', () {
                              // 버튼 2를 클릭했을 때 동작
                            },
                                170,
                                // 너비
                                170,
                                // 높이
                                0,
                                40,
                                0,
                                70),
                            _buildImageButton('src/img/Asset 8.png', () {
                            },
                                170,
                                // 너비
                                170,
                                //높이
                                0,
                                5,
                                0,
                                70),

                             ],
                          )

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
          drawer: ClipRRect(
            borderRadius: BorderRadius.horizontal(right: Radius.circular(20.0)),
            child: Drawer(
              backgroundColor: myColors[PRIMARY],
              width: 180,
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
                          0,
                        ),
                      ],
                    ),
                  ),
                  ListTile(
                      title: Text(
                        '-CUSTOMIZE',
                        style: TextStyle(color: Colors.white),
                      ),
                      onTap: () {}),
                  ListTile(
                      title: Text('-MI-NI GAME',
                          style: TextStyle(color: Colors.white)),
                      onTap: () {}),
                  ListTile(
                      title: Text('-DIARY', style: TextStyle(color: Colors.white)),
                      onTap: () {}),
                  ListTile(
                      title:
                      Text('-WALKING', style: TextStyle(color: Colors.white)),
                      onTap: () {}),
                  ListTile(
                      title:
                      Text('-SHOPPING', style: TextStyle(color: Colors.white)),
                      onTap: () {}),
                ],
              ),
            ),
          ),
        ));
  }

  Widget _buildImageButton(String imagePath, Function() onTap, double width,
      double height, double top, double left, double right, double bottom) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        margin:
        EdgeInsets.only(top: top, left: left, right: right, bottom: bottom),
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

  Widget _buildTopbarImageButton(String imagePath, Function() onTap,
      double width, double height, double left, double top) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        margin: EdgeInsets.only(top: top, left: left, right: 20),
        padding: EdgeInsets.all(0),
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
